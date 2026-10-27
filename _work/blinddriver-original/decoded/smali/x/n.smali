.class public final Lx/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/e;


# instance fields
.field public final synthetic a:Lx/o;

.field public final synthetic b:Lj9/y;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lx/o;Lj9/y;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/n;->a:Lx/o;

    iput-object p2, p0, Lx/n;->b:Lj9/y;

    iput p3, p0, Lx/n;->c:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lx/n;->b:Lj9/y;

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Lx/j;

    iget v1, p0, Lx/n;->c:I

    iget-object p0, p0, Lx/n;->a:Lx/o;

    invoke-virtual {p0, v0, v1}, Lx/o;->M0(Lx/j;I)Z

    move-result p0

    return p0
.end method
