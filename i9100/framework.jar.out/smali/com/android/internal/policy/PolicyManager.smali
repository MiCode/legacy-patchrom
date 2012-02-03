.class public final Lcom/android/internal/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# static fields
.field private static final POLICY_IMPL_CLASS_NAME:Ljava/lang/String; = "com.android.internal.policy.impl.Policy"

.field private static final sPolicy:Lcom/android/internal/policy/IPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-string v4, "com.android.internal.policy.impl.Policy could not be instantiated"

    .line 39
    :try_start_0
    const-string v2, "com.android.internal.policy.impl.Policy"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, policyClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IPolicy;

    sput-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 51
    return-void

    .line 41
    .end local v1           #policyClass:Ljava/lang/Class;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 42
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 44
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 45
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be instantiated"

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 47
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 48
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.android.internal.policy.impl.Policy could not be instantiated"

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0, p0}, Lcom/android/internal/policy/IPolicy;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewWindowManager()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/policy/PolicyManager;->sPolicy:Lcom/android/internal/policy/IPolicy;

    invoke-interface {v0}, Lcom/android/internal/policy/IPolicy;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v0

    return-object v0
.end method
