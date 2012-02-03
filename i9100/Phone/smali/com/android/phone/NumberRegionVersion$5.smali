.class Lcom/android/phone/NumberRegionVersion$5;
.super Ljava/lang/Object;
.source "NumberRegionVersion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NumberRegionVersion;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NumberRegionVersion;


# direct methods
.method constructor <init>(Lcom/android/phone/NumberRegionVersion;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion$5;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion$5;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v0}, Lcom/android/phone/NumberRegionVersion;->startDownloadThread()V

    .line 437
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 438
    return-void
.end method
