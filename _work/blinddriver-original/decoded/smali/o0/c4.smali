.class public final synthetic Lo0/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Lo0/o4;


# direct methods
.method public synthetic constructor <init>(ZLo0/o4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/c4;->l:Z

    iput-object p2, p0, Lo0/c4;->m:Lo0/o4;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lm2/x;

    sget-object v0, Lt8/z;->a:Lt8/z;

    iget-boolean v1, p0, Lo0/c4;->l:Z

    if-nez v1, :cond_0

    sget-object v1, Lm2/v;->a:[Lp9/d;

    sget-object v1, Lm2/t;->i:Lm2/w;

    invoke-interface {p1, v1, v0}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lo0/c4;->m:Lo0/o4;

    iget-object v1, p0, Lo0/o4;->d:Lr0/a1;

    invoke-virtual {v1}, Lr0/a1;->g()F

    move-result v1

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ll9/a;->z(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lm2/v;->a:[Lp9/d;

    sget-object v2, Lm2/t;->b:Lm2/w;

    sget-object v3, Lm2/v;->a:[Lp9/d;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {p1, v2, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Lo0/b4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lo0/b4;-><init>(Lo0/o4;I)V

    sget-object p0, Lm2/l;->i:Lm2/w;

    new-instance v2, Lm2/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, p0, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    return-object v0
.end method
