.class Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryCallingCodeAndNewIndex"
.end annotation


# instance fields
.field public final countryCallingCode:I

.field public final newIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "countryCode"
    .parameter "newIndex"

    .prologue
    .line 2186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2187
    iput p1, p0, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .line 2188
    iput p2, p0, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 2189
    return-void
.end method
