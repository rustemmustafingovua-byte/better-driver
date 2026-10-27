.class public final synthetic Lod/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ldd/n;

.field public final synthetic m:Z

.field public final synthetic n:Li9/a;

.field public final synthetic o:Li9/a;

.field public final synthetic p:Lf1/r;

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Ldd/n;ZLi9/a;Li9/a;Lf1/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/z;->l:Ldd/n;

    iput-boolean p2, p0, Lod/z;->m:Z

    iput-object p3, p0, Lod/z;->n:Li9/a;

    iput-object p4, p0, Lod/z;->o:Li9/a;

    iput-object p5, p0, Lod/z;->p:Lf1/r;

    iput p6, p0, Lod/z;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lod/z;->q:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-object v0, p0, Lod/z;->l:Ldd/n;

    iget-boolean v1, p0, Lod/z;->m:Z

    iget-object v2, p0, Lod/z;->n:Li9/a;

    iget-object v3, p0, Lod/z;->o:Li9/a;

    iget-object v4, p0, Lod/z;->p:Lf1/r;

    invoke-static/range {v0 .. v6}, Lod/a0;->a(Ldd/n;ZLi9/a;Li9/a;Lf1/r;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
