import 'package:flutter/services.dart';

/// Input validators and formatters for security
class InputValidators {
  // Maximum lengths for different fields
  static const int maxTitleLength = 100;
  static const int maxDescriptionLength = 1000;
  static const int maxNameLength = 50;
  static const int maxMessageLength = 500;

  // Regex patterns
  static final RegExp alphanumericArabicRegex = RegExp(r'^[\u0600-\u06FFa-zA-Z0-9\s.,!?()-]+$');
  static final RegExp nameRegex = RegExp(r'^[\u0600-\u06FFa-zA-Z\s]+$');
  static final RegExp numberOnlyRegex = RegExp(r'^\d+$');

  /// Text input formatter that allows only alphanumeric + Arabic + basic punctuation
  static final alphanumericArabicFormatter = FilteringTextInputFormatter.allow(
    RegExp(r'[\u0600-\u06FFa-zA-Z0-9\s.,!?()-]'),
  );

  /// Text input formatter for names (Arabic + English letters only)
  static final nameFormatter = FilteringTextInputFormatter.allow(
    RegExp(r'[\u0600-\u06FFa-zA-Z\s]'),
  );

  /// Text input formatter for numbers only
  static final numbersOnlyFormatter = FilteringTextInputFormatter.digitsOnly;

  /// Text input formatter for price (numbers and decimal point)
  static final priceFormatter = FilteringTextInputFormatter.allow(
    RegExp(r'^\d*\.?\d*$'),
  );

  /// Validate title
  static String? validateTitle(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'العنوان مطلوب';
    }
    if (value.trim().length < 3) {
      return 'العنوان يجب أن يكون 3 أحرف على الأقل';
    }
    if (value.length > maxTitleLength) {
      return 'العنوان يجب ألا يتجاوز $maxTitleLength حرف';
    }
    return null;
  }

  /// Validate description
  static String? validateDescription(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'الوصف مطلوب';
    }
    if (value.trim().length < 10) {
      return 'الوصف يجب أن يكون 10 أحرف على الأقل';
    }
    if (value.length > maxDescriptionLength) {
      return 'الوصف يجب ألا يتجاوز $maxDescriptionLength حرف';
    }
    return null;
  }

  /// Validate name
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'الاسم مطلوب';
    }
    if (value.trim().length < 2) {
      return 'الاسم يجب أن يكون حرفين على الأقل';
    }
    if (value.length > maxNameLength) {
      return 'الاسم يجب ألا يتجاوز $maxNameLength حرف';
    }
    if (!nameRegex.hasMatch(value.trim())) {
      return 'الاسم يجب أن يحتوي على حروف فقط';
    }
    return null;
  }

  /// Validate price
  static String? validatePrice(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null; // Price is optional
    }

    final price = double.tryParse(value);
    if (price == null) {
      return 'السعر غير صحيح';
    }
    if (price < 0) {
      return 'السعر يجب أن يكون موجباً';
    }
    if (price > 999999999) {
      return 'السعر كبير جداً';
    }
    return null;
  }

  /// Validate phone number
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'رقم الهاتف مطلوب';
    }
    if (!numberOnlyRegex.hasMatch(value.trim())) {
      return 'رقم الهاتف يجب أن يحتوي على أرقام فقط';
    }
    if (value.trim().length < 8 || value.trim().length > 15) {
      return 'رقم الهاتف غير صحيح';
    }
    return null;
  }

  /// Sanitize text input (remove potential harmful characters)
  static String sanitizeText(String input) {
    // Remove any control characters and trim
    return input
        .replaceAll(RegExp(r'[\x00-\x1F\x7F]'), '')
        .trim();
  }

  /// Validate file size (in bytes)
  static bool isFileSizeValid(int bytes, {int maxMB = 10}) {
    final maxBytes = maxMB * 1024 * 1024;
    return bytes <= maxBytes;
  }

  /// Validate image file extension
  static bool isValidImageExtension(String filename) {
    final allowedExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.webp'];
    final extension = filename.toLowerCase().substring(filename.lastIndexOf('.'));
    return allowedExtensions.contains(extension);
  }
}
