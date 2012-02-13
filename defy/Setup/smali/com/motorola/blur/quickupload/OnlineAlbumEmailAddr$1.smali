.class Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$1;
.super Ljava/lang/Object;
.source "OnlineAlbumEmailAddr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;

.field final synthetic val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$1;->this$0:Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;

    iput-object p2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$1;->val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$1;->val$autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 174
    return-void
.end method
