.class public Lcom/android/internal/policy/impl/PhoneLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "PhoneLayoutInflater.java"


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/PhoneLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0
    .parameter "original"
    .parameter "newContext"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 47
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "newContext"

    .prologue
    .line 70
    new-instance v0, Lcom/android/internal/policy/impl/PhoneLayoutInflater;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .parameter "name"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/android/internal/policy/impl/PhoneLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 56
    .local v3, prefix:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/internal/policy/impl/PhoneLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 57
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 66
    .end local v3           #prefix:Ljava/lang/String;
    .end local v4           #view:Landroid/view/View;
    :goto_1
    return-object v5

    .line 60
    .restart local v3       #prefix:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v3           #prefix:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    goto :goto_1
.end method
