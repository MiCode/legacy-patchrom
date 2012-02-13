.class Lcom/android/phone/BluetoothAtSms$CPMS;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CPMS"
.end annotation


# instance fields
.field public mem1:Ljava/lang/String;

.field public mem2:Ljava/lang/String;

.field public mem3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "m1"
    .parameter "m2"
    .parameter "m3"

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    .line 458
    iput-object p2, p0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    .line 459
    iput-object p3, p0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem3:Ljava/lang/String;

    .line 460
    return-void
.end method
