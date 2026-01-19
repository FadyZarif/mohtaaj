# Contact Helper - دليل الاستخدام

## نظرة عامة
تم إنشاء `ContactHelper` لتوفير طريقة موحدة وسهلة لمعالجة الاتصالات الهاتفية والواتس أب في جميع أنحاء التطبيق.

## الميزات
- ✅ عرض **Bottom Sheet** بخيارات التواصل (اتصال هاتفي + واتس أب)
- ✅ **التحقق من المصادقة** - لا يمكن الاتصال إلا للمستخدمين المسجلين (ليس Guest)
- ✅ **معالجة أرقام الهاتف** - يتعامل مع صيغ مختلفة من الأرقام تلقائياً
- ✅ معالجة **الأخطاء** بشكل احترافي مع رسائل واضحة
- ✅ **آمن من BuildContext** - استخدام `context.mounted` للتحقق من صحة السياق

## الملفات المتأثرة

### 1. `lib/core/helpers/contact_helper.dart` (جديد)
ملف Helper يحتوي على:
- `ContactHelper.showContactOptions()` - الدالة الرئيسية العامة
- معالجة الاتصالات الهاتفية
- معالجة واتس أب مع إضافة رمز الدولة تلقائياً
- معالجة الأخطاء والرسائل

### 2. `lib/features/items/ui/screens/item_details_screen.dart`
تم تحديث زر الاتصال في أسفل الشاشة:
```dart
GestureDetector(
  onTap: () {
    getIt<AuthService>().requireAuth(
      context,
      () async {
        final state = context.read<ItemDetailsCubit>().state;
        state.maybeWhen(
          success: (item, _, __) {
            if (item.owner?.phone != null && item.owner!.phone.isNotEmpty) {
              ContactHelper.showContactOptions(
                context,
                item.owner!.phone,
              );
            }
          },
          orElse: () {},
        );
      },
    );
  },
  child: Container(...),
),
```

### 3. `lib/features/profile/ui/widgets/user_info_header.dart`
تم تحديث زر الاتصال في رأس ملف المستخدم:
```dart
GestureDetector(
  onTap: () {
    getIt<AuthService>().requireAuth(
      context,
      () {
        if (user.phone.isNotEmpty) {
          ContactHelper.showContactOptions(context, user.phone);
        }
      },
    );
  },
  child: Container(...),
),
```

## كيفية الاستخدام

### الاستخدام الأساسي
```dart
import '../../../../core/helpers/contact_helper.dart';

// في أي مكان في التطبيق حيث لديك رقم هاتف
ContactHelper.showContactOptions(context, phoneNumber);
```

### مع التحقق من المصادقة
```dart
import '../../../../core/services/auth_service.dart';

getIt<AuthService>().requireAuth(
  context,
  () {
    if (phoneNumber.isNotEmpty) {
      ContactHelper.showContactOptions(context, phoneNumber);
    } else {
      // عرض رسالة خطأ
    }
  },
);
```

## صيغ الأرقام المدعومة
- `+20123456789` - صيغة دولية
- `0123456789` - صيغة محلية مصرية
- `20123456789` - بدون علامة +
- `123456789` - رقم بدون رمز الدولة (سيتم إضافة +20 تلقائياً)

## المزايا التقنية

### معالجة BuildContext الآمنة
```dart
if (context.mounted) {
  // استخدام context آمن
}
```

### معالجة الأخطاء
- تحقق من توفر الهاتف
- تحقق من توفر التطبيقات المطلوبة
- رسائل خطأ واضحة بالعربية

### معالجة أرقام الهاتف
- إزالة الأحرف الخاصة التلقائية
- إضافة رمز الدولة إذا كان مفقوداً
- دعم صيغ متعددة من الأرقام

## الاختبار
للاختبار، قم بـ:
1. تسجيل الدخول إلى التطبيق
2. انتقل إلى شاشة تفاصيل منتج أو ملف مستخدم
3. اضغط على زر الهاتف الأخضر
4. اختر "اتصال هاتفي" أو "واتس أب"

## ملاحظات
- ⚠️ يجب تسجيل الدخول لاستخدام الميزة (لا للضيوف)
- ⚠️ تأكد من أن رقم الهاتف غير فارغ
- ⚠️ الواتس أب يتطلب تثبيت التطبيق على الجهاز

