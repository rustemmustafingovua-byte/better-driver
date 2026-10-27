.class public final synthetic Lo0/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Li9/a;

.field public final synthetic n:Lf1/r;

.field public final synthetic o:Z

.field public final synthetic p:Lo0/v2;


# direct methods
.method public synthetic constructor <init>(ZLi9/a;Lf1/r;ZLo0/v2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/w2;->l:Z

    iput-object p2, p0, Lo0/w2;->m:Li9/a;

    iput-object p3, p0, Lo0/w2;->n:Lf1/r;

    iput-boolean p4, p0, Lo0/w2;->o:Z

    iput-object p5, p0, Lo0/w2;->p:Lo0/v2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Lr0/r;->H(I)I

    move-result v6

    iget-boolean v0, p0, Lo0/w2;->l:Z

    iget-object v1, p0, Lo0/w2;->m:Li9/a;

    iget-object v2, p0, Lo0/w2;->n:Lf1/r;

    iget-boolean v3, p0, Lo0/w2;->o:Z

    iget-object v4, p0, Lo0/w2;->p:Lo0/v2;

    invoke-static/range {v0 .. v6}, Lo0/x2;->a(ZLi9/a;Lf1/r;ZLo0/v2;Lr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
