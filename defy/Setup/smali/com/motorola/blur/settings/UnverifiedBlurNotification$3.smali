.class Lcom/motorola/blur/settings/UnverifiedBlurNotification$3;
.super Ljava/lang/Object;
.source "UnverifiedBlurNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/UnverifiedBlurNotification;->showEmailSentConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/UnverifiedBlurNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$3;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/blur/settings/UnverifiedBlurNotification$3;->this$0:Lcom/motorola/blur/settings/UnverifiedBlurNotification;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/UnverifiedBlurNotification;->finish()V

    .line 154
    return-void
.end method
