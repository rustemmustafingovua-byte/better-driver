.class public final Lyc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final l:Lyc/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyc/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyc/o;->l:Lyc/o;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    const-string p0, "?"

    return-object p0
.end method
