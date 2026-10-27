.class public final Ly9/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly8/c;
.implements La9/d;


# instance fields
.field public final l:Ly8/c;

.field public final m:Ly8/h;


# direct methods
.method public constructor <init>(Ly8/c;Ly8/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly9/x;->l:Ly8/c;

    iput-object p2, p0, Ly9/x;->m:Ly8/h;

    return-void
.end method


# virtual methods
.method public final getCallerFrame()La9/d;
    .locals 1

    iget-object p0, p0, Ly9/x;->l:Ly8/c;

    instance-of v0, p0, La9/d;

    if-eqz v0, :cond_0

    check-cast p0, La9/d;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContext()Ly8/h;
    .locals 0

    iget-object p0, p0, Ly9/x;->m:Ly8/h;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ly9/x;->l:Ly8/c;

    invoke-interface {p0, p1}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
