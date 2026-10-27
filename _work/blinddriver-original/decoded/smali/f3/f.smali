.class public final Lf3/f;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:Lf3/x;

.field public final synthetic m:Li9/a;

.field public final synthetic n:Lf3/a0;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Lb3/m;


# direct methods
.method public constructor <init>(Lf3/x;Li9/a;Lf3/a0;Ljava/lang/String;Lb3/m;)V
    .locals 0

    iput-object p1, p0, Lf3/f;->l:Lf3/x;

    iput-object p2, p0, Lf3/f;->m:Li9/a;

    iput-object p3, p0, Lf3/f;->n:Lf3/a0;

    iput-object p4, p0, Lf3/f;->o:Ljava/lang/String;

    iput-object p5, p0, Lf3/f;->p:Lb3/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lf3/f;->o:Ljava/lang/String;

    iget-object v1, p0, Lf3/f;->p:Lb3/m;

    iget-object v2, p0, Lf3/f;->l:Lf3/x;

    iget-object v3, p0, Lf3/f;->m:Li9/a;

    iget-object p0, p0, Lf3/f;->n:Lf3/a0;

    invoke-virtual {v2, v3, p0, v0, v1}, Lf3/x;->j(Li9/a;Lf3/a0;Ljava/lang/String;Lb3/m;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
