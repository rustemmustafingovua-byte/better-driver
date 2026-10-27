.class public final Lv4/v;
.super Lv4/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk/e;

.field public final synthetic b:Lv4/w;


# direct methods
.method public constructor <init>(Lv4/w;Lk/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv4/v;->b:Lv4/w;

    iput-object p2, p0, Lv4/v;->a:Lk/e;

    return-void
.end method


# virtual methods
.method public final c(Lv4/t;)V
    .locals 2

    iget-object v0, p0, Lv4/v;->b:Lv4/w;

    iget-object v0, v0, Lv4/w;->m:Landroid/view/ViewGroup;

    iget-object v1, p0, Lv4/v;->a:Lk/e;

    invoke-virtual {v1, v0}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lv4/t;->P(Lv4/r;)Lv4/t;

    return-void
.end method
