.class public final synthetic Lb/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final synthetic l:Landroidx/lifecycle/q;

.field public final synthetic m:Landroidx/lifecycle/h;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/q;Landroidx/lifecycle/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/d0;->l:Landroidx/lifecycle/q;

    iput-object p2, p0, Lb/d0;->m:Landroidx/lifecycle/h;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lb/d0;->l:Landroidx/lifecycle/q;

    iget-object p0, p0, Lb/d0;->m:Landroidx/lifecycle/h;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    return-void
.end method
