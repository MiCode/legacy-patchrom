.class Lcom/android/internal/policy/impl/GlobalActions$Helper;
.super Ljava/lang/Object;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Helper"
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/internal/policy/impl/GlobalActions$Helper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$Helper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static addActions(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$Helper;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$Helper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/GlobalActions$Helper;->addActions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private addActions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation

    const-string v2, "ic_lock_reboot"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/GlobalActions$Helper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    const-string v2, "global_action_reboot"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/GlobalActions$Helper;->getStringId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$Helper$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$Helper$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$Helper;II)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "ic_lock_screenshot"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/GlobalActions$Helper;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    const-string v2, "global_action_screenshot"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/GlobalActions$Helper;->getStringId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$Helper$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$Helper$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$Helper;II)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/GlobalActions$Helper;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$Helper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/GlobalActions$Helper;->getResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
