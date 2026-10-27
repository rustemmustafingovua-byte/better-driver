.class public final synthetic Lx/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Li9/a;

.field public final synthetic m:Lf1/r;

.field public final synthetic n:Lx/f0;

.field public final synthetic o:Lw/j;


# direct methods
.method public synthetic constructor <init>(Li9/a;Lf1/r;Lx/f0;Lw/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/w;->l:Li9/a;

    iput-object p2, p0, Lx/w;->m:Lf1/r;

    iput-object p3, p0, Lx/w;->n:Lx/f0;

    iput-object p4, p0, Lx/w;->o:Lw/j;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v5

    iget-object v0, p0, Lx/w;->l:Li9/a;

    iget-object v1, p0, Lx/w;->m:Lf1/r;

    iget-object v2, p0, Lx/w;->n:Lx/f0;

    iget-object v3, p0, Lx/w;->o:Lw/j;

    invoke-static/range {v0 .. v5}, Lx/l;->a(Li9/a;Lf1/r;Lx/f0;Lw/j;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
