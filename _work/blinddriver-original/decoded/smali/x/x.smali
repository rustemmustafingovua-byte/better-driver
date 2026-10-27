.class public final synthetic Lx/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lx/f0;

.field public final synthetic m:Lx/u;

.field public final synthetic n:Lc2/r1;

.field public final synthetic o:Lx/p0;


# direct methods
.method public synthetic constructor <init>(Lx/f0;Lx/u;Lc2/r1;Lx/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/x;->l:Lx/f0;

    iput-object p2, p0, Lx/x;->m:Lx/u;

    iput-object p3, p0, Lx/x;->n:Lc2/r1;

    iput-object p4, p0, Lx/x;->o:Lx/p0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lr0/g0;

    new-instance p1, Lk4/h;

    iget-object v0, p0, Lx/x;->m:Lx/u;

    iget-object v1, p0, Lx/x;->n:Lc2/r1;

    iget-object v2, p0, Lx/x;->o:Lx/p0;

    invoke-direct {p1, v0, v1, v2}, Lk4/h;-><init>(Lx/u;Lc2/r1;Lx/p0;)V

    iget-object p0, p0, Lx/x;->l:Lx/f0;

    iput-object p1, p0, Lx/f0;->c:Lk4/h;

    new-instance p1, Lb0/u0;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method
