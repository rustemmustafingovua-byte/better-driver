.class public final synthetic Lo0/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lc2/f1;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Lc2/f1;

.field public final synthetic p:I

.field public final synthetic q:La6/k;


# direct methods
.method public synthetic constructor <init>(Lc2/f1;IILc2/f1;ILa6/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/i4;->l:Lc2/f1;

    iput p2, p0, Lo0/i4;->m:I

    iput p3, p0, Lo0/i4;->n:I

    iput-object p4, p0, Lo0/i4;->o:Lc2/f1;

    iput p5, p0, Lo0/i4;->p:I

    iput-object p6, p0, Lo0/i4;->q:La6/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lc2/e1;

    iget-object v0, p0, Lo0/i4;->l:Lc2/f1;

    iget v1, p0, Lo0/i4;->m:I

    iget v2, p0, Lo0/i4;->n:I

    invoke-static {p1, v0, v1, v2}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    iget-object v0, p0, Lo0/i4;->q:La6/k;

    iget v0, v0, La6/k;->m:I

    iget-object v1, p0, Lo0/i4;->o:Lc2/f1;

    iget p0, p0, Lo0/i4;->p:I

    invoke-static {p1, v1, p0, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
