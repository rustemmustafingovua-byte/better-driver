.class public final Ll0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Ll0/l;

.field public final synthetic b:Ll0/k;


# direct methods
.method public constructor <init>(Ll0/l;Ll0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/j;->a:Ll0/l;

    iput-object p2, p0, Ll0/j;->b:Ll0/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll0/j;->a:Ll0/l;

    iget-object p0, p0, Ll0/j;->b:Ll0/k;

    invoke-static {p1, v0, p0, p2}, Lm0/d1;->n(Ly1/x;Lm0/o;Lb0/c2;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
