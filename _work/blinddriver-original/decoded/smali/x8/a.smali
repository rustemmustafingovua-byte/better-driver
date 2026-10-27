.class public final Lx8/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic l:Lj9/o;


# direct methods
.method public constructor <init>(Li9/a;)V
    .locals 0

    check-cast p1, Lj9/o;

    iput-object p1, p0, Lx8/a;->l:Lj9/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lx8/a;->l:Lj9/o;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void
.end method
