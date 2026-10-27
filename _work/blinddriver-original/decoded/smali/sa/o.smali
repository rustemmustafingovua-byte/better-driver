.class public final synthetic Lsa/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Lsa/p;

.field public final synthetic m:I

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Lsa/p;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsa/o;->l:Lsa/p;

    iput p2, p0, Lsa/o;->m:I

    iput p3, p0, Lsa/o;->n:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lsa/o;->l:Lsa/p;

    iget v1, p0, Lsa/o;->m:I

    iget p0, p0, Lsa/o;->n:I

    :try_start_0
    iget-object v2, v0, Lsa/p;->H:Lsa/y;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Lsa/y;->m(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lsa/b;->o:Lsa/b;

    invoke-virtual {v0, v1, v1, p0}, Lsa/p;->b(Lsa/b;Lsa/b;Ljava/io/IOException;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
