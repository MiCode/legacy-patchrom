.class Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoldKeyConcept"
.end annotation


# instance fields
.field private mHomeKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyComponentsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mTopActivity:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3
    .parameter

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2885
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mHomeKeyRequestedComponents:Ljava/util/HashSet;

    .line 2886
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mPowerKeyRequestedComponents:Ljava/util/HashSet;

    .line 2887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    .line 2888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mTopActivity:Landroid/content/ComponentName;

    .line 2892
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mHomeKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2893
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mPowerKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2894
    return-void
.end method


# virtual methods
.method public getCurrentTopActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 2953
    monitor-enter p0

    .line 2954
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mTopActivity:Landroid/content/ComponentName;

    monitor-exit p0

    return-object v0

    .line 2955
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 2946
    monitor-enter p0

    .line 2947
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 2948
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 2939
    monitor-enter p0

    .line 2940
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2941
    .local v0, components:Ljava/util/HashSet;
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 2942
    .end local v0           #components:Ljava/util/HashSet;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 3
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 2912
    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 2913
    const/4 v1, 0x0

    .line 2924
    :goto_0
    return v1

    .line 2916
    :cond_0
    monitor-enter p0

    .line 2917
    if-eqz p3, :cond_1

    .line 2918
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2919
    .local v0, components:Ljava/util/HashSet;
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2924
    :goto_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2925
    .end local v0           #components:Ljava/util/HashSet;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2921
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 2922
    .restart local v0       #components:Ljava/util/HashSet;
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 2960
    monitor-enter p0

    .line 2961
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mTopActivity:Landroid/content/ComponentName;

    .line 2962
    monitor-exit p0

    .line 2963
    return-void

    .line 2962
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
