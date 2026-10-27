.class public final Lmd/d;
.super La9/c;
.source "SourceFile"


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lua/nav/support/DevMessagesWorker;

.field public n:I


# direct methods
.method public constructor <init>(Lua/nav/support/DevMessagesWorker;La9/c;)V
    .locals 0

    iput-object p1, p0, Lmd/d;->m:Lua/nav/support/DevMessagesWorker;

    invoke-direct {p0, p2}, La9/c;-><init>(Ly8/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmd/d;->l:Ljava/lang/Object;

    iget p1, p0, Lmd/d;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmd/d;->n:I

    iget-object p1, p0, Lmd/d;->m:Lua/nav/support/DevMessagesWorker;

    invoke-virtual {p1, p0}, Lua/nav/support/DevMessagesWorker;->c(Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
