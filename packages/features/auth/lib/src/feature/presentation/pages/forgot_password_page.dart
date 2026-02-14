import 'package:core/core.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Hook up forgot-password logic (send reset email)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password reset link sent (mock)')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forgot Password')),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(AppSpacingResponsive.paddingLG),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(Icons.lock_open, size: context.r(72), color: AppColors.primary),
                  SizedBox(height: AppSpacingResponsive.xl),
                  Text(
                    'Reset your password',
                    style: AppTypographyResponsive.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: AppSpacingResponsive.md),
                  AppTextField(
                    controller: _emailController,
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    prefixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) return 'Please enter your email';
                      if (!value.contains('@')) return 'Please enter a valid email';
                      return null;
                    },
                  ),
                  SizedBox(height: AppSpacingResponsive.lg),
                  AppButton(
                    label: 'Send reset link',
                    variant: AppButtonVariant.primary,
                    backgroundColor: context.colorScheme.primary,
                    foregroundColor: context.colorScheme.onPrimary,
                    onPressed: _onSubmit,
                    isFullWidth: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
