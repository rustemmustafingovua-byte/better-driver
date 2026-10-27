.class public final Lp2/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final l:Lp2/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp2/a0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp2/a0;->l:Lp2/a0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-wide p0, Lm1/p;->g:J

    new-instance v0, Lm1/p;

    invoke-direct {v0, p0, p1}, Lm1/p;-><init>(J)V

    return-object v0

    :cond_0
    const-string p0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, p0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lm1/v;->c(I)J

    move-result-wide p0

    new-instance v0, Lm1/p;

    invoke-direct {v0, p0, p1}, Lm1/p;-><init>(J)V

    return-object v0
.end method
