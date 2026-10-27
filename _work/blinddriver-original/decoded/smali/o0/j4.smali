.class public final Lo0/j4;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Lo0/o4;


# direct methods
.method public constructor <init>(Lo0/o4;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lo0/j4;->l:Lo0/o4;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    check-cast p3, Ly8/c;

    new-instance p1, Lo0/j4;

    iget-object p0, p0, Lo0/j4;->l:Lo0/o4;

    invoke-direct {p1, p0, p3}, Lo0/j4;-><init>(Lo0/o4;Ly8/c;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p1, p0}, Lo0/j4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lo0/j4;->l:Lo0/o4;

    iget-object p0, p0, Lo0/o4;->o:Lad/t;

    invoke-virtual {p0}, Lad/t;->invoke()Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
