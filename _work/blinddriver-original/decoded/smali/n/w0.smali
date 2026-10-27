.class public final synthetic Ln/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lj9/y;

.field public final synthetic m:F

.field public final synthetic n:Ln/f;

.field public final synthetic o:Ln/k;

.field public final synthetic p:Li9/c;


# direct methods
.method public synthetic constructor <init>(Lj9/y;FLn/f;Ln/k;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/w0;->l:Lj9/y;

    iput p2, p0, Ln/w0;->m:F

    iput-object p3, p0, Ln/w0;->n:Ln/f;

    iput-object p4, p0, Ln/w0;->o:Ln/k;

    iput-object p5, p0, Ln/w0;->p:Li9/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Ln/w0;->l:Lj9/y;

    iget-object p1, p1, Lj9/y;->m:Ljava/lang/Object;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Ln/i;

    iget v3, p0, Ln/w0;->m:F

    iget-object v4, p0, Ln/w0;->n:Ln/f;

    iget-object v5, p0, Ln/w0;->o:Ln/k;

    iget-object v6, p0, Ln/w0;->p:Li9/c;

    invoke-static/range {v0 .. v6}, Ln/d;->i(Ln/i;JFLn/f;Ln/k;Li9/c;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
