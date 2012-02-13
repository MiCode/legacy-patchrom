.class Lcom/android/server/DeviceManager3LMService$RulesEngine;
.super Ljava/lang/Object;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RulesEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    }
.end annotation


# instance fields
.field private mRulesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPolicy(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, regexMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v5, p0, v2, v3}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/DeviceManager3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public checkPolicy(Ljava/lang/String;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    .local v3, returnCode:Z
    const/4 v2, 0x0

    .local v2, longestRegexStrMatch:I
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    .local v4, rule:Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    iget-object v5, v4, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, currentRegexStrLength:I
    if-le v0, v2, :cond_1

    iget-object v5, v4, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v3, v4, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mPermitted:Z

    move v2, v0

    goto :goto_1

    .end local v0           #currentRegexStrLength:I
    .end local v4           #rule:Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    :cond_2
    move v5, v3

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPolicy(Ljava/util/Map;)Z
    .locals 7
    .parameter "regexPermMap"

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, pair:Ljava/util/Map$Entry;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/DeviceManager3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    const-string v4, "DeviceManager3LM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid regex pattern: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/util/regex/PatternSyntaxException;
    .end local v2           #pair:Ljava/util/Map$Entry;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public updatePolicy(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "regex"
    .parameter "permitted"

    .prologue
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    :cond_0
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    .local v2, rule:Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    iget-object v3, v2, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mRegexStr:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean p2, v2, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;->mPermitted:Z

    move v3, v5

    .end local v2           #rule:Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;
    :goto_0
    return v3

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService$RulesEngine;->mRulesList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/DeviceManager3LMService$RulesEngine$Rule;-><init>(Lcom/android/server/DeviceManager3LMService$RulesEngine;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "DeviceManager3LM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing regex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method
