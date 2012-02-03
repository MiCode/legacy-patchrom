.class Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;
.super Ljava/lang/Object;
.source "RecentApplicationsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/RecentApplicationsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RecentApplicationsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    iget-object v4, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    iget-object v0, v4, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->mButtons:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 78
    .local v1, b:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/RecentApplicationsDialog$1;->this$0:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    #calls: Lcom/android/internal/policy/impl/RecentApplicationsDialog;->setButtonAppearance(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v4, v1, v5, v5}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->access$000(Lcom/android/internal/policy/impl/RecentApplicationsDialog;Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v1           #b:Landroid/view/View;
    :cond_0
    return-void
.end method
