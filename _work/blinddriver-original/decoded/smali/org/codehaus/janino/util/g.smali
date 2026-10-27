.class public final Lorg/codehaus/janino/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/janino/util/b0;


# instance fields
.field public final a:[Lorg/codehaus/janino/util/b0;


# direct methods
.method public constructor <init>([Lorg/codehaus/janino/util/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/janino/util/g;->a:[Lorg/codehaus/janino/util/b0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutputStream;)V
    .locals 4

    iget-object p0, p0, Lorg/codehaus/janino/util/g;->a:[Lorg/codehaus/janino/util/b0;

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/codehaus/janino/util/b0;->b()B

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-interface {v2, p1}, Lorg/codehaus/janino/util/b0;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()B
    .locals 0

    const/16 p0, 0x5b

    return p0
.end method
