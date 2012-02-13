.class Lcom/android/phone/NetworkSettingENS$5;
.super Ljava/lang/Object;
.source "NetworkSettingENS.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSettingENS;->networksListLoaded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSettingENS;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSettingENS;)V
    .locals 0
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/phone/NetworkSettingENS$5;->this$0:Lcom/android/phone/NetworkSettingENS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$5;->this$0:Lcom/android/phone/NetworkSettingENS;

    const-string v1, "Remove network list dialog"

    #calls: Lcom/android/phone/NetworkSettingENS;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSettingENS;->access$200(Lcom/android/phone/NetworkSettingENS;Ljava/lang/String;)V

    .line 737
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 740
    iget-object v0, p0, Lcom/android/phone/NetworkSettingENS$5;->this$0:Lcom/android/phone/NetworkSettingENS;

    #calls: Lcom/android/phone/NetworkSettingENS;->updateAutoSelect()V
    invoke-static {v0}, Lcom/android/phone/NetworkSettingENS;->access$1400(Lcom/android/phone/NetworkSettingENS;)V

    .line 741
    return-void
.end method
