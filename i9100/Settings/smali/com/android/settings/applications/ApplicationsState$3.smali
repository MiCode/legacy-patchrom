.class final Lcom/android/settings/applications/ApplicationsState$3;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 170
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    move v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
