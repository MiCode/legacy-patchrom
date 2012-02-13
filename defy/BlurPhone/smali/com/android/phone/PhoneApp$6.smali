.class Lcom/android/phone/PhoneApp$6;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneApp;->createManagedRoamingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/android/phone/PhoneApp$6;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2220
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2222
    const-string v1, "PhoneApp"

    const-string v2, "onManagedRoamingDialogClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.networksettingens.MANUAL_SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2225
    .local v0, networkSettingIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/PhoneApp$6;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/phone/NetworkSettingENS;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2228
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2230
    iget-object v1, p0, Lcom/android/phone/PhoneApp$6;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2233
    .end local v0           #networkSettingIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp$6;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->display_managed_roaming_dialog:Z
    invoke-static {v1, v2}, Lcom/android/phone/PhoneApp;->access$1802(Lcom/android/phone/PhoneApp;Z)Z

    .line 2234
    return-void
.end method
