.class Lcom/android/settings/applications/ManageApplications$AppViewHolder;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppViewHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field appSize:Landroid/widget/TextView;

.field checkBox:Landroid/widget/CheckBox;

.field disabled:Landroid/widget/TextView;

.field entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateSizeText(Lcom/android/settings/applications/ManageApplications;)V
    .locals 4
    .parameter "ma"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/android/settings/applications/ManageApplications;->access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
