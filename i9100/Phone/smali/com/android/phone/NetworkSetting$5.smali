.class Lcom/android/phone/NetworkSetting$5;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$5;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 374
    return-void
.end method
