.class Lcom/android/phone/SmscSettings$3;
.super Ljava/lang/Object;
.source "SmscSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SmscSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SmscSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/SmscSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/phone/SmscSettings$3;->this$0:Lcom/android/phone/SmscSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/SmscSettings$3;->this$0:Lcom/android/phone/SmscSettings;

    iget-object v1, p0, Lcom/android/phone/SmscSettings$3;->this$0:Lcom/android/phone/SmscSettings;

    #getter for: Lcom/android/phone/SmscSettings;->smsc_number:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/SmscSettings;->access$100(Lcom/android/phone/SmscSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/phone/SmscSettings;->SMSC:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/SmscSettings;->access$002(Lcom/android/phone/SmscSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/phone/SmscSettings$3;->this$0:Lcom/android/phone/SmscSettings;

    #getter for: Lcom/android/phone/SmscSettings;->SMSC:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/SmscSettings;->access$000(Lcom/android/phone/SmscSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/phone/SmscSettings$3;->this$0:Lcom/android/phone/SmscSettings;

    iget-object v1, p0, Lcom/android/phone/SmscSettings$3;->this$0:Lcom/android/phone/SmscSettings;

    #getter for: Lcom/android/phone/SmscSettings;->SMSC:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/SmscSettings;->access$000(Lcom/android/phone/SmscSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/SmscSettings;->smsc_set(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SmscSettings;->access$300(Lcom/android/phone/SmscSettings;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SmscSettings$3;->this$0:Lcom/android/phone/SmscSettings;

    const v1, 0x7f0b0288

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
