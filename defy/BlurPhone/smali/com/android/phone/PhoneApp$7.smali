.class Lcom/android/phone/PhoneApp$7;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 2238
    iput-object p1, p0, Lcom/android/phone/PhoneApp$7;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/android/phone/PhoneApp$7;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->display_managed_roaming_dialog:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$1802(Lcom/android/phone/PhoneApp;Z)Z

    .line 2241
    return-void
.end method
