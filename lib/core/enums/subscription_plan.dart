enum SubscriptionPlan {
  monthly('monthly'),
  annually('annually');

  const SubscriptionPlan(this.value);
  final String value;

  static String get displayName {
    switch (SubscriptionPlan.monthly) {
      case SubscriptionPlan.monthly:
        return 'Monthly';
      case SubscriptionPlan.annually:
        return 'Annually';
    }
  }

  String getDisplayName() {
    switch (this) {
      case SubscriptionPlan.monthly:
        return 'Monthly';
      case SubscriptionPlan.annually:
        return 'Annually';
    }
  }

  String getPrice() {
    switch (this) {
      case SubscriptionPlan.monthly:
        return '\$5 USD';
      case SubscriptionPlan.annually:
        return '\$50 USD';
    }
  }

  String getPeriod() {
    switch (this) {
      case SubscriptionPlan.monthly:
        return '/Month';
      case SubscriptionPlan.annually:
        return '/Year';
    }
  }
}