.class public final Lorg/codehaus/janino/util/f;
.super Lorg/codehaus/janino/util/h;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codehaus/janino/util/h;-><init>(S)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/codehaus/janino/util/f;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 3

    iget-object p0, p0, Lorg/codehaus/janino/util/f;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/codehaus/janino/util/e;

    invoke-virtual {v2, p1}, Lorg/codehaus/janino/util/e;->a(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method
