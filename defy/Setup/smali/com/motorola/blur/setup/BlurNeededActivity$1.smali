.class Lcom/motorola/blur/setup/BlurNeededActivity$1;
.super Ljava/lang/Object;
.source "BlurNeededActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/BlurNeededActivity;->showDialogAndRunSetup(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/BlurNeededActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BlurNeededActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/motorola/blur/setup/BlurNeededActivity$1;->this$0:Lcom/motorola/blur/setup/BlurNeededActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method
