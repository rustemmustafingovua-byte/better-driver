.class public final Ls0/a0;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls0/a0;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/a0;->c:Ls0/a0;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 0

    iget p0, p3, Lr0/h2;->n:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Cannot reset when inserting"

    invoke-static {p0}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3}, Lr0/h2;->G()V

    const/4 p0, 0x0

    iput p0, p3, Lr0/h2;->t:I

    invoke-virtual {p3}, Lr0/h2;->o()I

    move-result p1

    iget p2, p3, Lr0/h2;->h:I

    sub-int/2addr p1, p2

    iput p1, p3, Lr0/h2;->u:I

    iput p0, p3, Lr0/h2;->i:I

    iput p0, p3, Lr0/h2;->j:I

    iput p0, p3, Lr0/h2;->o:I

    return-void
.end method
