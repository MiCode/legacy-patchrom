.class Lcom/android/phone/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Settings;->showNoSIMDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    invoke-virtual {v0}, Lcom/android/phone/Settings;->finish()V

    .line 1016
    return-void
.end method
