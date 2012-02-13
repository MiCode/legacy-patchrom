.class Lcom/motorola/blur/quickupload/OnlineAlbumSettings$1;
.super Ljava/lang/Object;
.source "OnlineAlbumSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->createSettingsDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/quickupload/OnlineAlbumSettings;


# direct methods
.method constructor <init>(Lcom/motorola/blur/quickupload/OnlineAlbumSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings$1;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumSettings$1;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumSettings;

    invoke-virtual {v0}, Lcom/motorola/blur/quickupload/OnlineAlbumSettings;->addAccount()V

    .line 130
    return-void
.end method
