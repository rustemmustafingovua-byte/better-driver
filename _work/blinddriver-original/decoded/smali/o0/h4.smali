.class public final Lo0/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Lo0/t3;


# direct methods
.method public constructor <init>(ZLo0/t3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/h4;->l:Z

    iput-object p2, p0, Lo0/h4;->m:Lo0/t3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v1, p1

    check-cast v1, Lo0/o4;

    move-object v9, p2

    check-cast v9, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v0, Lo0/a4;->a:Lo0/a4;

    and-int/lit8 p1, p1, 0xe

    const/high16 p2, 0x6000000

    or-int v10, p1, p2

    const/4 v2, 0x0

    iget-boolean v3, p0, Lo0/h4;->l:Z

    iget-object v4, p0, Lo0/h4;->m:Lo0/t3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v10}, Lo0/a4;->b(Lo0/o4;Lf1/r;ZLo0/t3;Li9/e;Li9/f;FFLr0/q;I)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
