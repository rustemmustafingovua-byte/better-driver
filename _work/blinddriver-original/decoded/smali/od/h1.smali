.class public final synthetic Lod/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lsc/q0;

.field public final synthetic m:Lua/nav/c;

.field public final synthetic n:Z

.field public final synthetic o:Li9/a;

.field public final synthetic p:Li9/f;

.field public final synthetic q:Li9/c;

.field public final synthetic r:Z

.field public final synthetic s:Li9/a;


# direct methods
.method public synthetic constructor <init>(Lsc/q0;Lua/nav/c;ZLi9/a;Li9/f;Li9/c;ZLi9/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/h1;->l:Lsc/q0;

    iput-object p2, p0, Lod/h1;->m:Lua/nav/c;

    iput-boolean p3, p0, Lod/h1;->n:Z

    iput-object p4, p0, Lod/h1;->o:Li9/a;

    iput-object p5, p0, Lod/h1;->p:Li9/f;

    iput-object p6, p0, Lod/h1;->q:Li9/c;

    iput-boolean p7, p0, Lod/h1;->r:Z

    iput-object p8, p0, Lod/h1;->s:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0xc30049

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v9

    iget-object v0, p0, Lod/h1;->l:Lsc/q0;

    iget-object v1, p0, Lod/h1;->m:Lua/nav/c;

    iget-boolean v2, p0, Lod/h1;->n:Z

    iget-object v3, p0, Lod/h1;->o:Li9/a;

    iget-object v4, p0, Lod/h1;->p:Li9/f;

    iget-object v5, p0, Lod/h1;->q:Li9/c;

    iget-boolean v6, p0, Lod/h1;->r:Z

    iget-object v7, p0, Lod/h1;->s:Li9/a;

    invoke-static/range {v0 .. v9}, Lod/g3;->U(Lsc/q0;Lua/nav/c;ZLi9/a;Li9/f;Li9/c;ZLi9/a;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
