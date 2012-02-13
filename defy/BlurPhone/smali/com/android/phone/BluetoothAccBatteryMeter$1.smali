.class Lcom/android/phone/BluetoothAccBatteryMeter$1;
.super Landroid/os/Handler;
.source "BluetoothAccBatteryMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAccBatteryMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAccBatteryMeter;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAccBatteryMeter;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/BluetoothAccBatteryMeter$1;->this$0:Lcom/android/phone/BluetoothAccBatteryMeter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 104
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_1

    .line 105
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 106
    .local v2, percent:I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 108
    .local v3, status:I
    const/4 v0, 0x0

    .line 109
    .local v0, chargeImage:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 110
    const v0, 0x7f02012f

    .line 116
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter$1;->this$0:Lcom/android/phone/BluetoothAccBatteryMeter;

    #getter for: Lcom/android/phone/BluetoothAccBatteryMeter;->mPreference:Lcom/android/phone/BluetoothBatteryUsePreference;
    invoke-static {v4}, Lcom/android/phone/BluetoothAccBatteryMeter;->access$000(Lcom/android/phone/BluetoothAccBatteryMeter;)Lcom/android/phone/BluetoothBatteryUsePreference;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/phone/BluetoothBatteryUsePreference;->setStatus(II)V

    .line 117
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter$1;->this$0:Lcom/android/phone/BluetoothAccBatteryMeter;

    const v5, 0x7f070031

    invoke-virtual {v4, v5}, Lcom/android/phone/BluetoothAccBatteryMeter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, messageView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/phone/BluetoothAccBatteryMeter$1;->this$0:Lcom/android/phone/BluetoothAccBatteryMeter;

    #getter for: Lcom/android/phone/BluetoothAccBatteryMeter;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BluetoothAccBatteryMeter;->access$100(Lcom/android/phone/BluetoothAccBatteryMeter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .end local v0           #chargeImage:I
    .end local v1           #messageView:Landroid/widget/TextView;
    .end local v2           #percent:I
    .end local v3           #status:I
    :cond_1
    return-void

    .line 111
    .restart local v0       #chargeImage:I
    .restart local v2       #percent:I
    .restart local v3       #status:I
    :cond_2
    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 112
    const v0, 0x7f02012e

    goto :goto_0

    .line 113
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 114
    const v0, 0x7f02012d

    goto :goto_0
.end method
