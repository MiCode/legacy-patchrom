.class Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsStorageCapacity"
.end annotation


# instance fields
.field public memName:Ljava/lang/String;

.field public total:I

.field public used:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->memName:Ljava/lang/String;

    .line 443
    return-void
.end method
