.class public final Landroid/pim/vcard/VCardInterpreterCollection;
.super Ljava/lang/Object;
.source "VCardInterpreterCollection.java"

# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# instance fields
.field private final mInterpreterCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/pim/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/pim/vcard/VCardInterpreter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, interpreterCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/pim/vcard/VCardInterpreter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->end()V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public endEntry()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->endEntry()V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public endProperty()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/pim/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    return-object v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 3
    .parameter "group"

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->start()V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public startEntry()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->startEntry()V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public startProperty()V
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    goto :goto_0

    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method
