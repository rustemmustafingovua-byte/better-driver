.class public Lcom/graphhopper/routing/ev/EncodedValueSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAPPER:Lb6/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb6/c0;

    invoke-direct {v0}, Lb6/c0;-><init>()V

    sput-object v0, Lcom/graphhopper/routing/ev/EncodedValueSerializer;->MAPPER:Lb6/c0;

    const/16 v1, 0x8

    sget-object v2, Lr5/g;->n:Lr5/g;

    invoke-virtual {v0, v1, v2}, Lb6/c0;->u(ILr5/g;)V

    const/4 v1, 0x3

    sget-object v2, Lr5/g;->l:Lr5/g;

    invoke-virtual {v0, v1, v2}, Lb6/c0;->u(ILr5/g;)V

    sget-object v1, Lb6/n0;->l:Lb6/l0;

    invoke-virtual {v0, v1}, Lb6/c0;->t(Lb6/o0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserializeEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/EncodedValue;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/graphhopper/routing/ev/EncodedValueSerializer;->MAPPER:Lb6/c0;

    const-string v1, "content"

    invoke-virtual {v0, p0, v1}, Lb6/c0;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, v0, Lb6/c0;->l:Ls5/d;

    invoke-virtual {v1, p0}, Ls5/d;->k(Ljava/lang/String;)Ls5/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb6/c0;->k(Ls5/k;)Lb6/q;

    move-result-object v1
    :try_end_1
    .catch Ls5/l; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-class v2, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-virtual {v0, v1, v2}, Lb6/c0;->c(Ls5/v;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/ev/EncodedValue;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-static {v0}, Lb6/p;->e(Ljava/io/IOException;)Lb6/p;

    move-result-object v0

    throw v0

    :goto_1
    throw v0
    :try_end_2
    .catch Ls5/l; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ls5/l;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Could not deserialize encoded value: "

    const-string v3, ", error: "

    invoke-static {v2, p0, v3, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static serializeEncodedValue(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/graphhopper/routing/ev/EncodedValueSerializer;->MAPPER:Lb6/c0;

    invoke-virtual {v0, p0}, Lb6/c0;->v(Lcom/graphhopper/routing/ev/EncodedValue;)Lb6/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb6/c0;->x(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ls5/l;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Could not serialize encoded value: "

    const-string v3, ", error: "

    invoke-static {v2, p0, v3, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
