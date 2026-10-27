.class public final Lorg/codehaus/janino/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/janino/util/b0;


# instance fields
.field public final a:S

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(SLjava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/codehaus/janino/util/e;->a:S

    iput-object p2, p0, Lorg/codehaus/janino/util/e;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 2

    iget-short v0, p0, Lorg/codehaus/janino/util/e;->a:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object p0, p0, Lorg/codehaus/janino/util/e;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/janino/util/b0;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v0}, Lorg/codehaus/janino/util/b0;->b()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-interface {v0, p1}, Lorg/codehaus/janino/util/b0;->a(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()B
    .locals 0

    const/16 p0, 0x40

    return p0
.end method
