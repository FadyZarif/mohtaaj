# Notification Payloads - Frontend Reference

> كل إشعار بيوصل بهالشكل:
> ```json
> {
>   "notification": { "title": "...", "body": "..." },
>   "data": { "type": "...", ... }
> }
> ```
> استخدم `data.type` لتعرف وين توجه المستخدم لما يضغط على الإشعار.

---

## `new_message` → صفحة الشات

```json
{
  "notification": {
    "title": "أحمد",
    "body": "مرحبا، النظارة لسا متوفرة؟"
  },
  "data": {
    "type": "new_message",
    "chatId": "chat-uuid"
  }
}
```

---

## `new_offer` → صفحة العرض

```json
{
  "notification": {
    "title": "عرض جديد",
    "body": "محمد أرسل عرضاً على نظارة شمسية"
  },
  "data": {
    "type": "new_offer",
    "offerId": "offer-uuid"
  }
}
```

---

## `offer_accepted` → صفحة العرض

```json
{
  "notification": {
    "title": "تم قبول عرضك",
    "body": "تم قبول عرضك على نظارة شمسية"
  },
  "data": {
    "type": "offer_accepted",
    "offerId": "offer-uuid"
  }
}
```

---

## `offer_rejected` → صفحة العرض

```json
{
  "notification": {
    "title": "تم رفض عرضك",
    "body": "تم رفض عرضك على نظارة شمسية"
  },
  "data": {
    "type": "offer_rejected",
    "offerId": "offer-uuid"
  }
}
```

---

## `item_favorited` → صفحة المنتج

```json
{
  "notification": {
    "title": "إعجاب جديد",
    "body": "سارة أضاف نظارة شمسية إلى المفضلة"
  },
  "data": {
    "type": "item_favorited",
    "itemId": "item-uuid"
  }
}
```

---

## `new_rating` → صفحة التقييمات

```json
{
  "notification": {
    "title": "تقييم جديد",
    "body": "خالد قيّمك بـ 5 نجوم على نظارة شمسية"
  },
  "data": {
    "type": "new_rating"
  }
}
```

---

## `badge_earned` → صفحة الشارات

```json
{
  "notification": {
    "title": "شارة جديدة!",
    "body": "مبروك! حصلت على شارة بائع محترف"
  },
  "data": {
    "type": "badge_earned",
    "badgeId": "badge-uuid"
  }
}
```

---

## `challenge_completed` → صفحة التحديات

```json
{
  "notification": {
    "title": "تهانينا!",
    "body": "أكملت تحدي \"تحدي الأسبوع\" وربحت 100 نقطة"
  },
  "data": {
    "type": "challenge_completed",
    "challengeId": "challenge-uuid",
    "points": "100"
  }
}
```

---

## `points_earned` → صفحة النقاط

```json
{
  "notification": {
    "title": "ربحت 50 نقطة",
    "body": "نشرت منتج جديد"
  },
  "data": {
    "type": "points_earned"
  }
}
```

---

## `request_fulfilled` → صفحة الطلب

```json
{
  "notification": {
    "title": "تم تلبية طلبك",
    "body": "تم العثور على عرض لطلبك: أبحث عن نظارة"
  },
  "data": {
    "type": "request_fulfilled",
    "requestId": "request-uuid"
  }
}
```

---

## مثال التعامل بالفرونت

```dart
FirebaseMessaging.onMessageOpenedApp.listen((message) {
  switch (message.data['type']) {
    case 'new_message':
      navigate(ChatScreen(chatId: message.data['chatId']));
      break;
    case 'new_offer':
    case 'offer_accepted':
    case 'offer_rejected':
      navigate(OfferScreen(offerId: message.data['offerId']));
      break;
    case 'item_favorited':
      navigate(ItemScreen(itemId: message.data['itemId']));
      break;
    case 'new_rating':
      navigate(RatingsScreen());
      break;
    case 'badge_earned':
      navigate(BadgeScreen(badgeId: message.data['badgeId']));
      break;
    case 'challenge_completed':
      navigate(ChallengesScreen(challengeId: message.data['challengeId']));
      break;
    case 'points_earned':
      navigate(PointsScreen());
      break;
    case 'request_fulfilled':
      navigate(RequestScreen(requestId: message.data['requestId']));
      break;
  }
});
```
