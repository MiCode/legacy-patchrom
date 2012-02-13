.class Lcom/android/phone/BluetoothAtSms$CNMI;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CNMI"
.end annotation


# instance fields
.field public bfr:I

.field public bm:I

.field public ds:I

.field public mode:I

.field public mt:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0
    .parameter "imode"
    .parameter "imt"
    .parameter "ibm"
    .parameter "ids"
    .parameter "ibfr"

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput p1, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 479
    iput p2, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    .line 480
    iput p3, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    .line 481
    iput p4, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->ds:I

    .line 482
    iput p5, p0, Lcom/android/phone/BluetoothAtSms$CNMI;->bfr:I

    .line 483
    return-void
.end method
