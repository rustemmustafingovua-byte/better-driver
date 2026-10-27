.class public final synthetic Lv9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu9/g0;


# instance fields
.field public final synthetic l:Lv9/d;

.field public final synthetic m:Lu9/q1;


# direct methods
.method public synthetic constructor <init>(Lv9/d;Lu9/q1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9/c;->l:Lv9/d;

    iput-object p2, p0, Lv9/c;->m:Lu9/q1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lv9/c;->m:Lu9/q1;

    iget-object p0, p0, Lv9/c;->l:Lv9/d;

    iget-object p0, p0, Lv9/d;->n:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
