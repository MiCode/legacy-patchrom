.class public Landroid/sax/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field children:Landroid/sax/Children;

.field final depth:I

.field endElementListener:Landroid/sax/EndElementListener;

.field endTextElementListener:Landroid/sax/EndTextElementListener;

.field final localName:Ljava/lang/String;

.field final parent:Landroid/sax/Element;

.field requiredChilden:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sax/Element;",
            ">;"
        }
    .end annotation
.end field

.field startElementListener:Landroid/sax/StartElementListener;

.field final uri:Ljava/lang/String;

.field visited:Z


# direct methods
.method constructor <init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "parent"
    .parameter "uri"
    .parameter "localName"
    .parameter "depth"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/sax/Element;->parent:Landroid/sax/Element;

    iput-object p2, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    iput-object p3, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    iput p4, p0, Landroid/sax/Element;->depth:I

    return-void
.end method

.method static toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uri"
    .parameter "localName"

    .prologue
    const-string v3, "\'"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method checkRequiredChildren(Lorg/xml/sax/Locator;)V
    .locals 6
    .parameter "locator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .local v2, requiredChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sax/Element;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sax/Element;

    .local v0, child:Landroid/sax/Element;
    iget-boolean v3, v0, Landroid/sax/Element;->visited:Z

    if-nez v3, :cond_0

    new-instance v3, Landroid/sax/BadXmlException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is missing required"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child element named "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/sax/BadXmlException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0           #child:Landroid/sax/Element;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public getChild(Ljava/lang/String;)Landroid/sax/Element;
    .locals 1
    .parameter "localName"

    .prologue
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 2
    .parameter "uri"
    .parameter "localName"

    .prologue
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This element already has an end text element listener. It cannot have children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-nez v0, :cond_1

    new-instance v0, Landroid/sax/Children;

    invoke-direct {v0}, Landroid/sax/Children;-><init>()V

    iput-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    :cond_1
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    invoke-virtual {v0, p0, p1, p2}, Landroid/sax/Children;->getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public requireChild(Ljava/lang/String;)Landroid/sax/Element;
    .locals 1
    .parameter "localName"

    .prologue
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/sax/Element;->requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    return-object v0
.end method

.method public requireChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 2
    .parameter "uri"
    .parameter "localName"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .local v0, child:Landroid/sax/Element;
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method resetRequiredChildren()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/sax/Element;->requiredChilden:Ljava/util/ArrayList;

    .local v1, requiredChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/sax/Element;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .end local p0
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sax/Element;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/sax/Element;->visited:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public setElementListener(Landroid/sax/ElementListener;)V
    .locals 0
    .parameter "elementListener"

    .prologue
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    return-void
.end method

.method public setEndElementListener(Landroid/sax/EndElementListener;)V
    .locals 2
    .parameter "endElementListener"

    .prologue
    iget-object v0, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/sax/Element;->endElementListener:Landroid/sax/EndElementListener;

    return-void
.end method

.method public setEndTextElementListener(Landroid/sax/EndTextElementListener;)V
    .locals 2
    .parameter "endTextElementListener"

    .prologue
    iget-object v0, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "End text element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/sax/Element;->children:Landroid/sax/Children;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This element already has children. It cannot have an end text element listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/sax/Element;->endTextElementListener:Landroid/sax/EndTextElementListener;

    return-void
.end method

.method public setStartElementListener(Landroid/sax/StartElementListener;)V
    .locals 2
    .parameter "startElementListener"

    .prologue
    iget-object v0, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Start element listener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/sax/Element;->startElementListener:Landroid/sax/StartElementListener;

    return-void
.end method

.method public setTextElementListener(Landroid/sax/TextElementListener;)V
    .locals 0
    .parameter "elementListener"

    .prologue
    invoke-virtual {p0, p1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    invoke-virtual {p0, p1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/sax/Element;->uri:Ljava/lang/String;

    iget-object v1, p0, Landroid/sax/Element;->localName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/sax/Element;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
