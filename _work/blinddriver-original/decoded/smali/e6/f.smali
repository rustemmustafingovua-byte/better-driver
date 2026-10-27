.class public abstract Le6/f;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/k;
.implements Le6/s;


# static fields
.field public static final I:Lb6/i0;


# instance fields
.field public final A:Ljava/util/Set;

.field public final B:Z

.field public final C:Z

.field public final D:Ljava/util/Map;

.field public transient E:Ljava/util/concurrent/ConcurrentHashMap;

.field public F:Lg5/e;

.field public G:Landroidx/lifecycle/a1;

.field public final H:Lf6/r;

.field public final o:Lb6/l;

.field public final p:Lr5/p;

.field public final q:Le6/c0;

.field public r:Lb6/n;

.field public s:Lb6/n;

.field public t:Lf6/v;

.field public u:Z

.field public v:Z

.field public final w:Lf6/c;

.field public final x:[Lf6/f0;

.field public y:Le6/w;

.field public final z:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb6/i0;

    const-string v1, "#temporary-name"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb6/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le6/f;->I:Lb6/i0;

    return-void
.end method

.method public constructor <init>(Le6/f;)V
    .locals 1

    .line 30
    iget-boolean v0, p1, Le6/f;->B:Z

    invoke-direct {p0, p1, v0}, Le6/f;-><init>(Le6/f;Z)V

    return-void
.end method

.method public constructor <init>(Le6/f;Lf6/c;)V
    .locals 1

    .line 160
    iget-object v0, p1, Le6/f;->o:Lb6/l;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Lb6/l;)V

    .line 161
    iput-object v0, p0, Le6/f;->o:Lb6/l;

    .line 162
    iget-object v0, p1, Le6/f;->q:Le6/c0;

    iput-object v0, p0, Le6/f;->q:Le6/c0;

    .line 163
    iget-object v0, p1, Le6/f;->r:Lb6/n;

    iput-object v0, p0, Le6/f;->r:Lb6/n;

    .line 164
    iget-object v0, p1, Le6/f;->s:Lb6/n;

    iput-object v0, p0, Le6/f;->s:Lb6/n;

    .line 165
    iget-object v0, p1, Le6/f;->t:Lf6/v;

    iput-object v0, p0, Le6/f;->t:Lf6/v;

    .line 166
    iput-object p2, p0, Le6/f;->w:Lf6/c;

    .line 167
    iget-object p2, p1, Le6/f;->D:Ljava/util/Map;

    iput-object p2, p0, Le6/f;->D:Ljava/util/Map;

    .line 168
    iget-object p2, p1, Le6/f;->z:Ljava/util/Set;

    iput-object p2, p0, Le6/f;->z:Ljava/util/Set;

    .line 169
    iget-boolean p2, p1, Le6/f;->B:Z

    iput-boolean p2, p0, Le6/f;->B:Z

    .line 170
    iget-object p2, p1, Le6/f;->A:Ljava/util/Set;

    iput-object p2, p0, Le6/f;->A:Ljava/util/Set;

    .line 171
    iget-object p2, p1, Le6/f;->y:Le6/w;

    iput-object p2, p0, Le6/f;->y:Le6/w;

    .line 172
    iget-object p2, p1, Le6/f;->x:[Lf6/f0;

    iput-object p2, p0, Le6/f;->x:[Lf6/f0;

    .line 173
    iget-object p2, p1, Le6/f;->H:Lf6/r;

    iput-object p2, p0, Le6/f;->H:Lf6/r;

    .line 174
    iget-boolean p2, p1, Le6/f;->u:Z

    iput-boolean p2, p0, Le6/f;->u:Z

    .line 175
    iget-object p2, p1, Le6/f;->F:Lg5/e;

    iput-object p2, p0, Le6/f;->F:Lg5/e;

    .line 176
    iget-boolean p2, p1, Le6/f;->C:Z

    iput-boolean p2, p0, Le6/f;->C:Z

    .line 177
    iget-object p2, p1, Le6/f;->p:Lr5/p;

    iput-object p2, p0, Le6/f;->p:Lr5/p;

    .line 178
    iget-boolean p2, p1, Le6/f;->v:Z

    iput-boolean p2, p0, Le6/f;->v:Z

    .line 179
    iget-object p1, p1, Le6/f;->G:Landroidx/lifecycle/a1;

    iput-object p1, p0, Le6/f;->G:Landroidx/lifecycle/a1;

    return-void
.end method

.method public constructor <init>(Le6/f;Lf6/r;)V
    .locals 2

    .line 108
    iget-object v0, p1, Le6/f;->o:Lb6/l;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Lb6/l;)V

    .line 109
    iput-object v0, p0, Le6/f;->o:Lb6/l;

    .line 110
    iget-object v0, p1, Le6/f;->q:Le6/c0;

    iput-object v0, p0, Le6/f;->q:Le6/c0;

    .line 111
    iget-object v0, p1, Le6/f;->r:Lb6/n;

    iput-object v0, p0, Le6/f;->r:Lb6/n;

    .line 112
    iget-object v0, p1, Le6/f;->s:Lb6/n;

    iput-object v0, p0, Le6/f;->s:Lb6/n;

    .line 113
    iget-object v0, p1, Le6/f;->t:Lf6/v;

    iput-object v0, p0, Le6/f;->t:Lf6/v;

    .line 114
    iget-object v0, p1, Le6/f;->D:Ljava/util/Map;

    iput-object v0, p0, Le6/f;->D:Ljava/util/Map;

    .line 115
    iget-object v0, p1, Le6/f;->z:Ljava/util/Set;

    iput-object v0, p0, Le6/f;->z:Ljava/util/Set;

    .line 116
    iget-boolean v0, p1, Le6/f;->B:Z

    iput-boolean v0, p0, Le6/f;->B:Z

    .line 117
    iget-object v0, p1, Le6/f;->A:Ljava/util/Set;

    iput-object v0, p0, Le6/f;->A:Ljava/util/Set;

    .line 118
    iget-object v0, p1, Le6/f;->y:Le6/w;

    iput-object v0, p0, Le6/f;->y:Le6/w;

    .line 119
    iget-object v0, p1, Le6/f;->x:[Lf6/f0;

    iput-object v0, p0, Le6/f;->x:[Lf6/f0;

    .line 120
    iget-boolean v0, p1, Le6/f;->u:Z

    iput-boolean v0, p0, Le6/f;->u:Z

    .line 121
    iget-object v0, p1, Le6/f;->F:Lg5/e;

    iput-object v0, p0, Le6/f;->F:Lg5/e;

    .line 122
    iget-boolean v0, p1, Le6/f;->C:Z

    iput-boolean v0, p0, Le6/f;->C:Z

    .line 123
    iget-object v0, p1, Le6/f;->p:Lr5/p;

    iput-object v0, p0, Le6/f;->p:Lr5/p;

    .line 124
    iput-object p2, p0, Le6/f;->H:Lf6/r;

    .line 125
    new-instance v0, Lf6/t;

    sget-object v1, Lb6/h0;->s:Lb6/h0;

    invoke-direct {v0, p2, v1}, Lf6/t;-><init>(Lf6/r;Lb6/h0;)V

    .line 126
    iget-object p2, p1, Le6/f;->w:Lf6/c;

    invoke-virtual {p2, v0}, Lf6/c;->k(Lf6/t;)Lf6/c;

    move-result-object p2

    iput-object p2, p0, Le6/f;->w:Lf6/c;

    const/4 p2, 0x0

    .line 127
    iput-boolean p2, p0, Le6/f;->v:Z

    .line 128
    iget-object p1, p1, Le6/f;->G:Landroidx/lifecycle/a1;

    iput-object p1, p0, Le6/f;->G:Landroidx/lifecycle/a1;

    return-void
.end method

.method public constructor <init>(Le6/f;Ljava/util/Set;Ljava/util/Set;)V
    .locals 7

    .line 129
    iget-object v0, p1, Le6/f;->o:Lb6/l;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Lb6/l;)V

    .line 130
    iput-object v0, p0, Le6/f;->o:Lb6/l;

    .line 131
    iget-object v0, p1, Le6/f;->q:Le6/c0;

    iput-object v0, p0, Le6/f;->q:Le6/c0;

    .line 132
    iget-object v0, p1, Le6/f;->r:Lb6/n;

    iput-object v0, p0, Le6/f;->r:Lb6/n;

    .line 133
    iget-object v0, p1, Le6/f;->s:Lb6/n;

    iput-object v0, p0, Le6/f;->s:Lb6/n;

    .line 134
    iget-object v0, p1, Le6/f;->t:Lf6/v;

    iput-object v0, p0, Le6/f;->t:Lf6/v;

    .line 135
    iget-object v0, p1, Le6/f;->D:Ljava/util/Map;

    iput-object v0, p0, Le6/f;->D:Ljava/util/Map;

    .line 136
    iput-object p2, p0, Le6/f;->z:Ljava/util/Set;

    .line 137
    iget-boolean v0, p1, Le6/f;->B:Z

    iput-boolean v0, p0, Le6/f;->B:Z

    .line 138
    iput-object p3, p0, Le6/f;->A:Ljava/util/Set;

    .line 139
    iget-object v0, p1, Le6/f;->y:Le6/w;

    iput-object v0, p0, Le6/f;->y:Le6/w;

    .line 140
    iget-object v0, p1, Le6/f;->x:[Lf6/f0;

    iput-object v0, p0, Le6/f;->x:[Lf6/f0;

    .line 141
    iget-boolean v0, p1, Le6/f;->u:Z

    iput-boolean v0, p0, Le6/f;->u:Z

    .line 142
    iget-object v0, p1, Le6/f;->F:Lg5/e;

    iput-object v0, p0, Le6/f;->F:Lg5/e;

    .line 143
    iget-boolean v0, p1, Le6/f;->C:Z

    iput-boolean v0, p0, Le6/f;->C:Z

    .line 144
    iget-object v0, p1, Le6/f;->p:Lr5/p;

    iput-object v0, p0, Le6/f;->p:Lr5/p;

    .line 145
    iget-boolean v0, p1, Le6/f;->v:Z

    iput-boolean v0, p0, Le6/f;->v:Z

    .line 146
    iget-object v0, p1, Le6/f;->H:Lf6/r;

    iput-object v0, p0, Le6/f;->H:Lf6/r;

    .line 147
    iget-object v0, p1, Le6/f;->w:Lf6/c;

    .line 148
    iget-object v1, v0, Lf6/c;->q:[Le6/y;

    if-eqz p2, :cond_0

    .line 149
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    array-length v2, v1

    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 152
    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    .line 153
    iget-object v6, v5, Le6/y;->n:Lb6/i0;

    .line 154
    iget-object v6, v6, Lb6/i0;->l:Ljava/lang/String;

    .line 155
    invoke-static {v6, p2, p3}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 156
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    :cond_3
    new-instance p2, Lf6/c;

    iget-boolean p3, v0, Lf6/c;->l:Z

    iget-object v1, v0, Lf6/c;->r:Ljava/util/Map;

    iget-object v0, v0, Lf6/c;->t:Ljava/util/Locale;

    invoke-direct {p2, p3, v3, v1, v0}, Lf6/c;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    move-object v0, p2

    .line 158
    :goto_1
    iput-object v0, p0, Le6/f;->w:Lf6/c;

    .line 159
    iget-object p1, p1, Le6/f;->G:Landroidx/lifecycle/a1;

    iput-object p1, p0, Le6/f;->G:Landroidx/lifecycle/a1;

    return-void
.end method

.method public constructor <init>(Le6/f;Lu6/r;)V
    .locals 13

    .line 51
    iget-object v0, p1, Le6/f;->o:Lb6/l;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Lb6/l;)V

    .line 52
    iput-object v0, p0, Le6/f;->o:Lb6/l;

    .line 53
    iget-object v0, p1, Le6/f;->q:Le6/c0;

    iput-object v0, p0, Le6/f;->q:Le6/c0;

    .line 54
    iget-object v0, p1, Le6/f;->r:Lb6/n;

    iput-object v0, p0, Le6/f;->r:Lb6/n;

    .line 55
    iget-object v0, p1, Le6/f;->s:Lb6/n;

    iput-object v0, p0, Le6/f;->s:Lb6/n;

    .line 56
    iget-object v0, p1, Le6/f;->D:Ljava/util/Map;

    iput-object v0, p0, Le6/f;->D:Ljava/util/Map;

    .line 57
    iget-object v0, p1, Le6/f;->z:Ljava/util/Set;

    iput-object v0, p0, Le6/f;->z:Ljava/util/Set;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 58
    iget-boolean v1, p1, Le6/f;->B:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Le6/f;->B:Z

    .line 59
    iget-object v1, p1, Le6/f;->A:Ljava/util/Set;

    iput-object v1, p0, Le6/f;->A:Ljava/util/Set;

    .line 60
    iget-object v1, p1, Le6/f;->y:Le6/w;

    iput-object v1, p0, Le6/f;->y:Le6/w;

    .line 61
    iget-object v1, p1, Le6/f;->x:[Lf6/f0;

    iput-object v1, p0, Le6/f;->x:[Lf6/f0;

    .line 62
    iget-object v1, p1, Le6/f;->H:Lf6/r;

    iput-object v1, p0, Le6/f;->H:Lf6/r;

    .line 63
    iget-boolean v1, p1, Le6/f;->u:Z

    iput-boolean v1, p0, Le6/f;->u:Z

    .line 64
    iget-object v1, p1, Le6/f;->F:Lg5/e;

    .line 65
    iget-object v2, p1, Le6/f;->t:Lf6/v;

    if-eqz p2, :cond_b

    if-eqz v1, :cond_2

    .line 66
    new-instance v3, Lg5/e;

    iget-object v4, v1, Lg5/e;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 67
    invoke-static {v4, p2}, Lg5/e;->p(Ljava/util/ArrayList;Lu6/r;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v1, v1, Lg5/e;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 68
    invoke-static {v1, p2}, Lg5/e;->p(Ljava/util/ArrayList;Lu6/r;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x4

    invoke-direct {v3, v5, v4, v1}, Lg5/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v3

    .line 69
    :cond_2
    sget-object v3, Lu6/r;->l:Lu6/q;

    if-eqz v2, :cond_7

    .line 70
    iget-object v4, v2, Lf6/v;->d:Ljava/lang/Object;

    check-cast v4, [Le6/y;

    if-ne p2, v3, :cond_3

    goto :goto_4

    .line 71
    :cond_3
    array-length v5, v4

    .line 72
    new-instance v6, Ljava/util/HashMap;

    iget-object v7, v2, Lf6/v;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 73
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    array-length v5, v4

    move v8, v0

    :goto_2
    if-ge v8, v5, :cond_6

    aget-object v9, v4, v8

    if-nez v9, :cond_4

    const/4 v9, 0x0

    .line 75
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 76
    :cond_4
    invoke-virtual {v9, p2}, Le6/y;->D(Lu6/r;)Le6/y;

    move-result-object v10

    .line 77
    iget-object v9, v9, Le6/y;->n:Lb6/i0;

    .line 78
    iget-object v9, v9, Lb6/i0;->l:Ljava/lang/String;

    .line 79
    iget-object v11, v10, Le6/y;->n:Lb6/i0;

    .line 80
    iget-object v11, v11, Lb6/i0;->l:Ljava/lang/String;

    .line 81
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 83
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 85
    :cond_6
    new-instance v4, Lf6/v;

    new-array v5, v0, [Le6/y;

    .line 86
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Le6/y;

    .line 87
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 88
    iget v7, v2, Lf6/v;->a:I

    iput v7, v4, Lf6/v;->a:I

    .line 89
    iget-object v2, v2, Lf6/v;->b:Ljava/lang/Object;

    check-cast v2, Le6/c0;

    iput-object v2, v4, Lf6/v;->b:Ljava/lang/Object;

    .line 90
    iput-object v6, v4, Lf6/v;->c:Ljava/lang/Object;

    .line 91
    iput-object v5, v4, Lf6/v;->d:Ljava/lang/Object;

    move-object v2, v4

    .line 92
    :cond_7
    :goto_4
    iget-object v4, p1, Le6/f;->w:Lf6/c;

    .line 93
    iget-object v5, v4, Lf6/c;->q:[Le6/y;

    if-ne p2, v3, :cond_8

    goto :goto_7

    .line 94
    :cond_8
    array-length v3, v5

    .line 95
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    :goto_5
    if-ge v7, v3, :cond_a

    .line 96
    aget-object v8, v5, v7

    if-nez v8, :cond_9

    .line 97
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 98
    :cond_9
    invoke-virtual {v8, p2}, Le6/y;->D(Lu6/r;)Le6/y;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 99
    :cond_a
    new-instance p2, Lf6/c;

    iget-boolean v3, v4, Lf6/c;->l:Z

    iget-object v5, v4, Lf6/c;->r:Ljava/util/Map;

    iget-object v4, v4, Lf6/c;->t:Ljava/util/Locale;

    invoke-direct {p2, v3, v6, v5, v4}, Lf6/c;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    move-object v4, p2

    .line 100
    :goto_7
    iput-object v4, p0, Le6/f;->w:Lf6/c;

    goto :goto_8

    .line 101
    :cond_b
    iget-object p2, p1, Le6/f;->w:Lf6/c;

    iput-object p2, p0, Le6/f;->w:Lf6/c;

    .line 102
    :goto_8
    iput-object v2, p0, Le6/f;->t:Lf6/v;

    .line 103
    iput-object v1, p0, Le6/f;->F:Lg5/e;

    .line 104
    iget-boolean p2, p1, Le6/f;->C:Z

    iput-boolean p2, p0, Le6/f;->C:Z

    .line 105
    iget-object p2, p1, Le6/f;->p:Lr5/p;

    iput-object p2, p0, Le6/f;->p:Lr5/p;

    .line 106
    iput-boolean v0, p0, Le6/f;->v:Z

    .line 107
    iget-object p1, p1, Le6/f;->G:Landroidx/lifecycle/a1;

    iput-object p1, p0, Le6/f;->G:Landroidx/lifecycle/a1;

    return-void
.end method

.method public constructor <init>(Le6/f;Z)V
    .locals 1

    .line 31
    iget-object v0, p1, Le6/f;->o:Lb6/l;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Lb6/l;)V

    .line 32
    iput-object v0, p0, Le6/f;->o:Lb6/l;

    .line 33
    iget-object v0, p1, Le6/f;->q:Le6/c0;

    iput-object v0, p0, Le6/f;->q:Le6/c0;

    .line 34
    iget-object v0, p1, Le6/f;->r:Lb6/n;

    iput-object v0, p0, Le6/f;->r:Lb6/n;

    .line 35
    iget-object v0, p1, Le6/f;->s:Lb6/n;

    iput-object v0, p0, Le6/f;->s:Lb6/n;

    .line 36
    iget-object v0, p1, Le6/f;->t:Lf6/v;

    iput-object v0, p0, Le6/f;->t:Lf6/v;

    .line 37
    iget-object v0, p1, Le6/f;->w:Lf6/c;

    iput-object v0, p0, Le6/f;->w:Lf6/c;

    .line 38
    iget-object v0, p1, Le6/f;->D:Ljava/util/Map;

    iput-object v0, p0, Le6/f;->D:Ljava/util/Map;

    .line 39
    iget-object v0, p1, Le6/f;->z:Ljava/util/Set;

    iput-object v0, p0, Le6/f;->z:Ljava/util/Set;

    .line 40
    iput-boolean p2, p0, Le6/f;->B:Z

    .line 41
    iget-object p2, p1, Le6/f;->A:Ljava/util/Set;

    iput-object p2, p0, Le6/f;->A:Ljava/util/Set;

    .line 42
    iget-object p2, p1, Le6/f;->y:Le6/w;

    iput-object p2, p0, Le6/f;->y:Le6/w;

    .line 43
    iget-object p2, p1, Le6/f;->x:[Lf6/f0;

    iput-object p2, p0, Le6/f;->x:[Lf6/f0;

    .line 44
    iget-object p2, p1, Le6/f;->H:Lf6/r;

    iput-object p2, p0, Le6/f;->H:Lf6/r;

    .line 45
    iget-boolean p2, p1, Le6/f;->u:Z

    iput-boolean p2, p0, Le6/f;->u:Z

    .line 46
    iget-object p2, p1, Le6/f;->F:Lg5/e;

    iput-object p2, p0, Le6/f;->F:Lg5/e;

    .line 47
    iget-boolean p2, p1, Le6/f;->C:Z

    iput-boolean p2, p0, Le6/f;->C:Z

    .line 48
    iget-object p2, p1, Le6/f;->p:Lr5/p;

    iput-object p2, p0, Le6/f;->p:Lr5/p;

    .line 49
    iget-boolean p2, p1, Le6/f;->v:Z

    iput-boolean p2, p0, Le6/f;->v:Z

    .line 50
    iget-object p1, p1, Le6/f;->G:Landroidx/lifecycle/a1;

    iput-object p1, p0, Le6/f;->G:Landroidx/lifecycle/a1;

    return-void
.end method

.method public constructor <init>(Le6/g;Lj6/t;Lf6/c;Ljava/util/Map;Ljava/util/Set;ZLjava/util/Set;Z)V
    .locals 2

    .line 1
    iget-object v0, p2, Lj6/t;->a:Lb6/l;

    .line 2
    invoke-direct {p0, v0}, Lg6/f1;-><init>(Lb6/l;)V

    .line 3
    iput-object v0, p0, Le6/f;->o:Lb6/l;

    .line 4
    iget-object v0, p1, Le6/g;->k:Ljava/lang/Object;

    check-cast v0, Le6/c0;

    .line 5
    iput-object v0, p0, Le6/f;->q:Le6/c0;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Le6/f;->r:Lb6/n;

    .line 7
    iput-object v1, p0, Le6/f;->s:Lb6/n;

    .line 8
    iput-object v1, p0, Le6/f;->t:Lf6/v;

    .line 9
    iput-object p3, p0, Le6/f;->w:Lf6/c;

    .line 10
    iput-object p4, p0, Le6/f;->D:Ljava/util/Map;

    .line 11
    iput-object p5, p0, Le6/f;->z:Ljava/util/Set;

    .line 12
    iput-boolean p6, p0, Le6/f;->B:Z

    .line 13
    iput-object p7, p0, Le6/f;->A:Ljava/util/Set;

    .line 14
    iget-object p3, p1, Le6/g;->m:Ljava/lang/Object;

    check-cast p3, Le6/w;

    .line 15
    iput-object p3, p0, Le6/f;->y:Le6/w;

    .line 16
    iget-object p3, p1, Le6/g;->b:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 17
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [Lf6/f0;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, [Lf6/f0;

    :cond_1
    :goto_0
    iput-object v1, p0, Le6/f;->x:[Lf6/f0;

    .line 19
    iget-object p1, p1, Le6/g;->l:Ljava/lang/Object;

    check-cast p1, Lf6/r;

    .line 20
    iput-object p1, p0, Le6/f;->H:Lf6/r;

    .line 21
    iget-object p3, p0, Le6/f;->F:Lg5/e;

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-nez p3, :cond_3

    .line 22
    invoke-virtual {v0}, Le6/c0;->l()Z

    move-result p3

    if-nez p3, :cond_3

    .line 23
    invoke-virtual {v0}, Le6/c0;->h()Z

    move-result p3

    if-nez p3, :cond_3

    .line 24
    invoke-virtual {v0}, Le6/c0;->k()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, p5

    goto :goto_2

    :cond_3
    :goto_1
    move p3, p4

    :goto_2
    iput-boolean p3, p0, Le6/f;->u:Z

    .line 25
    invoke-virtual {p2}, Lj6/t;->d()Lr5/q;

    move-result-object p2

    .line 26
    iget-object p2, p2, Lr5/q;->m:Lr5/p;

    .line 27
    iput-object p2, p0, Le6/f;->p:Lr5/p;

    .line 28
    iput-boolean p8, p0, Le6/f;->C:Z

    .line 29
    iget-boolean p2, p0, Le6/f;->u:Z

    if-nez p2, :cond_4

    if-nez v1, :cond_4

    if-nez p8, :cond_4

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move p4, p5

    :goto_3
    iput-boolean p4, p0, Le6/f;->v:Z

    return-void
.end method

.method public static b0(Lb6/i;Lb6/l;Lj6/n;)Lb6/n;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    iget-object v7, v0, Lb6/i;->q:Lb6/h;

    const/4 v8, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lj6/n;->u()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lj6/n;->t(I)Lj6/m;

    move-result-object v5

    invoke-virtual {v7}, Ld6/m;->d()Lb6/d;

    move-result-object v1

    sget-object v2, Lb6/h0;->t:Lb6/h0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Lb6/d;->c0(Lj6/a;)Lr5/n0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr5/n0;->b()Lr5/b1;

    move-result-object v4

    invoke-virtual {v1}, Lr5/n0;->a()Lr5/b1;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v8

    move-object v4, v1

    :goto_0
    iget-object v6, v3, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ld6/n;->e(Ljava/lang/Class;)Ld6/d;

    iget-object v6, v7, Ld6/n;->r:La6/n;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lr5/n0;->n:Lr5/n0;

    if-nez v4, :cond_1

    invoke-virtual {v6}, Lr5/n0;->b()Lr5/b1;

    move-result-object v4

    :cond_1
    move-object v15, v4

    if-nez v1, :cond_2

    invoke-virtual {v6}, Lr5/n0;->a()Lr5/b1;

    move-result-object v1

    :cond_2
    move-object/from16 v16, v1

    if-nez v15, :cond_4

    if-eqz v16, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v2

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v9, Lb6/h0;

    iget-object v10, v2, Lb6/h0;->l:Ljava/lang/Boolean;

    iget-object v11, v2, Lb6/h0;->m:Ljava/lang/String;

    iget-object v12, v2, Lb6/h0;->n:Ljava/lang/Integer;

    iget-object v13, v2, Lb6/h0;->o:Ljava/lang/String;

    iget-object v14, v2, Lb6/h0;->p:Lb6/g0;

    invoke-direct/range {v9 .. v16}, Lb6/h0;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lb6/g0;Lr5/b1;Lr5/b1;)V

    move-object v6, v9

    :goto_2
    new-instance v1, Lb6/e;

    sget-object v2, Le6/f;->I:Lb6/i0;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lb6/e;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Lj6/h;Lb6/h0;)V

    move-object/from16 v3, p1

    goto :goto_3

    :cond_5
    new-instance v1, Lb6/e;

    const/4 v4, 0x0

    sget-object v6, Lb6/h0;->t:Lb6/h0;

    sget-object v2, Le6/f;->I:Lb6/i0;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lb6/e;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Lj6/h;Lb6/h0;)V

    :goto_3
    iget-object v2, v3, Lb6/l;->r:Ljava/lang/Object;

    check-cast v2, Ln6/d;

    if-nez v2, :cond_7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v7, v2}, Ld6/m;->l(Ljava/lang/Class;)Lj6/t;

    move-result-object v2

    iget-object v2, v2, Lj6/t;->e:Lj6/c;

    invoke-virtual {v7}, Ld6/m;->d()Lb6/d;

    move-result-object v4

    invoke-virtual {v4, v3, v7, v2}, Lb6/d;->f0(Lb6/l;Ld6/m;Lj6/c;)Lo6/n;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v2, v7, Ld6/m;->m:Ld6/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_6
    iget-object v5, v7, Ld6/n;->o:Lo6/m;

    invoke-virtual {v5, v7, v2}, Lo6/m;->E(Ld6/m;Lj6/c;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v4, v7, v3, v2}, Lo6/n;->a(Lb6/h;Lb6/l;Ljava/util/ArrayList;)Lo6/a;

    move-result-object v8

    :goto_4
    move-object v2, v8

    :cond_7
    iget-object v4, v3, Lb6/l;->q:Ljava/lang/Object;

    check-cast v4, Lb6/n;

    if-nez v4, :cond_8

    invoke-virtual {v0, v3, v1}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v4, v1, v3}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v0

    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v2, v1}, Ln6/d;->f(Lb6/f;)Ln6/d;

    move-result-object v1

    new-instance v2, Lf6/d0;

    invoke-direct {v2, v1, v0}, Lf6/d0;-><init>(Ln6/d;Lb6/n;)V

    return-object v2

    :cond_9
    return-object v0
.end method

.method public static d0(Lf6/c;[Le6/y;Le6/y;Le6/y;)V
    .locals 4

    iget-object v0, p0, Lf6/c;->p:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lf6/c;->p:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-ne v3, p2, :cond_2

    aput-object p3, v2, v1

    iget-object v0, p0, Lf6/c;->q:[Le6/y;

    invoke-virtual {p0, p2}, Lf6/c;->a(Le6/y;)I

    move-result p0

    aput-object p3, v0, p0

    if-eqz p1, :cond_1

    array-length p0, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    if-ne v1, p2, :cond_0

    aput-object p3, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "No entry \'"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Le6/y;->n:Lb6/i0;

    iget-object p2, p2, Lb6/i0;->l:Ljava/lang/String;

    const-string p3, "\' found, can\'t replace"

    invoke-static {p1, p2, p3}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final U()Le6/c0;
    .locals 0

    iget-object p0, p0, Le6/f;->q:Le6/c0;

    return-object p0
.end method

.method public final V()Lb6/l;
    .locals 0

    iget-object p0, p0, Le6/f;->o:Lb6/l;

    return-object p0
.end method

.method public final Z()Lb6/n;
    .locals 1

    iget-object v0, p0, Le6/f;->r:Lb6/n;

    if-nez v0, :cond_0

    iget-object p0, p0, Le6/f;->s:Lb6/n;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lb6/i;->q:Lb6/h;

    invoke-virtual {v3}, Ld6/m;->d()Lb6/d;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lb6/f;->d()Lj6/h;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    iget-object v7, v0, Le6/f;->o:Lb6/l;

    iget-object v8, v0, Le6/f;->w:Lf6/c;

    iget-object v9, v0, Le6/f;->H:Lf6/r;

    if-eqz v6, :cond_5

    invoke-virtual {v4, v6}, Lb6/d;->D(Lj6/a;)Lj6/d0;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v4, v6, v10}, Lb6/d;->E(Lj6/a;Lj6/d0;)Lj6/d0;

    move-result-object v10

    iget-object v11, v10, Lj6/d0;->b:Ljava/lang/Class;

    iget-object v14, v10, Lj6/d0;->a:Lb6/i0;

    invoke-virtual {v1, v10}, Lb6/g;->C(Lj6/d0;)V

    const-class v12, Lr5/f1;

    if-ne v11, v12, :cond_4

    iget-object v11, v14, Lb6/i0;->l:Ljava/lang/String;

    if-nez v8, :cond_1

    move-object v12, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v11}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v12

    :goto_1
    if-nez v12, :cond_2

    iget-object v13, v0, Le6/f;->t:Lf6/v;

    if-eqz v13, :cond_2

    invoke-virtual {v13, v11}, Lf6/v;->i(Ljava/lang/String;)Le6/y;

    move-result-object v12

    :cond_2
    if-eqz v12, :cond_3

    iget-object v11, v12, Le6/y;->o:Lb6/l;

    new-instance v13, Lf6/w;

    iget-object v10, v10, Lj6/d0;->d:Ljava/lang/Class;

    invoke-direct {v13, v10}, Lr5/f1;-><init>(Ljava/lang/Class;)V

    move-object/from16 v17, v12

    :goto_2
    move-object v15, v13

    move-object v13, v11

    goto :goto_3

    :cond_3
    iget-object v0, v7, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid Object Id definition for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": cannot find property with name "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v5

    :cond_4
    invoke-virtual {v1, v11}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v11

    invoke-virtual {v1}, Lb6/i;->u()Lt6/p;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v12, Lr5/d1;

    invoke-static {v11, v12}, Lt6/p;->n(Lb6/l;Ljava/lang/Class;)[Lb6/l;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v1, v10}, Lb6/g;->B(Lj6/d0;)Lr5/d1;

    move-result-object v13

    move-object/from16 v17, v5

    goto :goto_2

    :goto_3
    invoke-virtual {v1, v13}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v16

    new-instance v12, Lf6/r;

    invoke-direct/range {v12 .. v17}, Lf6/r;-><init>(Lb6/l;Lb6/i0;Lr5/d1;Lb6/n;Le6/y;)V

    goto :goto_4

    :cond_5
    move-object v12, v9

    :goto_4
    if-eqz v12, :cond_6

    if-eq v12, v9, :cond_6

    invoke-virtual {v0, v12}, Le6/f;->u0(Lf6/r;)Le6/f;

    move-result-object v9

    goto :goto_5

    :cond_6
    move-object v9, v0

    :goto_5
    if-eqz v6, :cond_11

    invoke-virtual {v4, v3, v6}, Lb6/d;->N(Ld6/m;Lj6/a;)Lr5/w;

    move-result-object v10

    iget-boolean v11, v10, Lr5/w;->m:Z

    if-eqz v11, :cond_7

    iget-boolean v11, v0, Le6/f;->B:Z

    if-nez v11, :cond_7

    invoke-virtual {v9}, Le6/f;->t0()Le6/f;

    move-result-object v9

    :cond_7
    iget-boolean v11, v10, Lr5/w;->o:Z

    if-eqz v11, :cond_8

    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_6

    :cond_8
    iget-object v10, v10, Lr5/w;->l:Ljava/util/Set;

    :goto_6
    iget-object v11, v9, Le6/f;->z:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v10, v11

    goto :goto_7

    :cond_9
    if-eqz v11, :cond_b

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_7

    :cond_a
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v12, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object v10, v12

    :cond_b
    :goto_7
    iget-object v12, v9, Le6/f;->A:Ljava/util/Set;

    invoke-virtual {v4, v3, v6}, Lb6/d;->Q(Ld6/m;Lj6/a;)Lr5/c0;

    move-result-object v3

    iget-object v3, v3, Lr5/c0;->l:Ljava/util/Set;

    if-nez v12, :cond_c

    goto :goto_9

    :cond_c
    if-nez v3, :cond_d

    move-object v3, v12

    goto :goto_9

    :cond_d
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v12, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    move-object v3, v4

    :goto_9
    if-ne v10, v11, :cond_10

    if-eq v3, v12, :cond_11

    :cond_10
    invoke-virtual {v9, v10, v3}, Le6/f;->s0(Ljava/util/Set;Ljava/util/Set;)Le6/f;

    move-result-object v3

    move-object v9, v3

    :cond_11
    iget-object v3, v7, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lg6/f1;->T(Lb6/i;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v2, v1, Lr5/q;->m:Lr5/p;

    sget-object v3, Lr5/p;->t:Lr5/p;

    if-eq v2, v3, :cond_12

    move-object v5, v2

    :cond_12
    sget-object v2, Lr5/n;->m:Lr5/n;

    invoke-virtual {v1, v2}, Lr5/q;->b(Lr5/n;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, v8, Lf6/c;->l:Z

    if-ne v2, v1, :cond_13

    move-object v2, v8

    goto :goto_a

    :cond_13
    new-instance v2, Lf6/c;

    invoke-direct {v2, v8, v1}, Lf6/c;-><init>(Lf6/c;Z)V

    :goto_a
    if-eq v2, v8, :cond_14

    invoke-virtual {v9, v2}, Le6/f;->r0(Lf6/c;)Le6/f;

    move-result-object v9

    :cond_14
    if-nez v5, :cond_15

    iget-object v5, v0, Le6/f;->p:Lr5/p;

    :cond_15
    sget-object v0, Lr5/p;->r:Lr5/p;

    if-ne v5, v0, :cond_16

    invoke-virtual {v9}, Le6/f;->e0()Le6/f;

    move-result-object v0

    return-object v0

    :cond_16
    return-object v9
.end method

.method public abstract a0(Ls5/k;Lb6/i;)Ljava/lang/Object;
.end method

.method public final b(Lb6/i;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v2, Lb6/i;->q:Lb6/h;

    iget-object v3, v0, Le6/f;->q:Le6/c0;

    invoke-virtual {v3}, Le6/c0;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Le6/c0;->E(Lb6/h;)[Le6/y;

    move-result-object v4

    iget-object v6, v0, Le6/f;->A:Ljava/util/Set;

    iget-object v8, v0, Le6/f;->z:Ljava/util/Set;

    if-nez v8, :cond_0

    if-eqz v6, :cond_3

    :cond_0
    array-length v9, v4

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_3

    aget-object v11, v4, v10

    iget-object v11, v11, Le6/y;->n:Lb6/i0;

    iget-object v11, v11, Lb6/i0;->l:Ljava/lang/String;

    invoke-static {v11, v8, v6}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_1

    aget-object v11, v4, v10

    invoke-virtual {v11}, Le6/y;->z()V

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :cond_3
    iget-object v8, v0, Le6/f;->w:Lf6/c;

    invoke-virtual {v8}, Lf6/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le6/y;

    invoke-virtual {v9}, Le6/y;->u()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v1}, Ld6/m;->d()Lb6/d;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Lb6/f;->d()Lj6/h;

    move-result-object v11

    invoke-virtual {v10, v11}, Lb6/d;->l(Lj6/a;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Lb6/f;->d()Lj6/h;

    invoke-virtual {v2, v10}, Lb6/g;->n(Ljava/lang/Object;)Lu6/k;

    move-result-object v10

    invoke-virtual {v2}, Lb6/i;->u()Lt6/p;

    move-object v11, v10

    check-cast v11, Lf6/m;

    iget-object v11, v11, Lf6/m;->a:Lb6/l;

    invoke-virtual {v2, v11}, Lb6/i;->W(Lb6/l;)Lb6/n;

    move-result-object v12

    new-instance v13, Lg6/e1;

    invoke-direct {v13, v10, v11, v12}, Lg6/e1;-><init>(Lu6/k;Lb6/l;Lb6/n;)V

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_6

    iget-object v10, v9, Le6/y;->o:Lb6/l;

    invoke-virtual {v2, v10}, Lb6/i;->W(Lb6/l;)Lb6/n;

    move-result-object v13

    :cond_6
    invoke-virtual {v9, v13}, Le6/y;->G(Lb6/n;)Le6/y;

    move-result-object v10

    invoke-static {v8, v4, v9, v10}, Le6/f;->d0(Lf6/c;[Le6/y;Le6/y;Le6/y;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v8}, Lf6/c;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    iget-object v12, v0, Le6/f;->o:Lb6/l;

    if-eqz v11, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le6/y;

    invoke-virtual {v11}, Le6/y;->s()Lb6/n;

    move-result-object v14

    iget-object v15, v11, Le6/y;->o:Lb6/l;

    invoke-virtual {v2, v14, v11, v15}, Lb6/i;->d0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v14

    invoke-virtual {v11, v14}, Le6/y;->G(Lb6/n;)Le6/y;

    move-result-object v14

    invoke-virtual {v14}, Le6/y;->q()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v5, v14, Le6/y;->o:Lb6/l;

    if-nez v15, :cond_8

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    const/16 v17, 0x0

    goto :goto_4

    :cond_8
    const/16 v17, 0x0

    invoke-virtual {v14}, Le6/y;->s()Lb6/n;

    move-result-object v7

    invoke-virtual {v7, v15}, Lb6/n;->findBackReference(Ljava/lang/String;)Le6/y;

    move-result-object v7

    const-string v13, "Cannot handle managed/back reference "

    if-eqz v7, :cond_1b

    move-object/from16 v18, v3

    iget-object v3, v7, Le6/y;->o:Lb6/l;

    invoke-virtual {v5}, Lb6/l;->c0()Z

    move-result v5

    move-object/from16 v19, v6

    iget-object v6, v3, Lb6/l;->o:Ljava/lang/Class;

    move-object/from16 v20, v3

    iget-object v3, v12, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v3, Lf6/n;

    invoke-direct {v3, v14, v15, v7, v5}, Lf6/n;-><init>(Le6/y;Ljava/lang/String;Le6/y;Z)V

    move-object v14, v3

    :goto_4
    instance-of v3, v14, Lf6/n;

    if-nez v3, :cond_b

    invoke-virtual {v14}, Le6/y;->r()Lj6/d0;

    move-result-object v3

    invoke-virtual {v14}, Le6/y;->s()Lb6/n;

    move-result-object v5

    if-nez v5, :cond_9

    move-object/from16 v5, v16

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Lb6/n;->getObjectIdReader()Lf6/r;

    move-result-object v5

    :goto_5
    if-nez v3, :cond_a

    if-nez v5, :cond_a

    goto :goto_6

    :cond_a
    new-instance v5, Lf6/s;

    invoke-direct {v5, v14, v3}, Lf6/s;-><init>(Le6/y;Lj6/d0;)V

    move-object v14, v5

    :cond_b
    :goto_6
    invoke-interface {v14}, Lb6/f;->d()Lj6/h;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Ld6/m;->d()Lb6/d;

    move-result-object v5

    invoke-virtual {v5, v3}, Lb6/d;->g0(Lj6/h;)Lu6/r;

    move-result-object v3

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    move-object/from16 v3, v16

    :goto_7
    if-eqz v3, :cond_10

    invoke-virtual {v14}, Le6/y;->s()Lb6/n;

    move-result-object v5

    invoke-virtual {v5, v3}, Lb6/n;->unwrappingDeserializer(Lu6/r;)Lb6/n;

    move-result-object v3

    if-eq v3, v5, :cond_10

    if-eqz v3, :cond_10

    invoke-virtual {v14, v3}, Le6/y;->G(Lb6/n;)Le6/y;

    move-result-object v3

    if-nez v10, :cond_d

    new-instance v5, Lg5/e;

    invoke-direct {v5}, Lg5/e;-><init>()V

    move-object v10, v5

    :cond_d
    instance-of v5, v3, Le6/l;

    if-eqz v5, :cond_e

    iget-object v5, v10, Lg5/e;->m:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    iget-object v5, v10, Lg5/e;->n:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-virtual {v8, v3}, Lf6/c;->j(Le6/y;)V

    :cond_f
    :goto_9
    move-object/from16 v3, v18

    move-object/from16 v6, v19

    goto/16 :goto_3

    :cond_10
    invoke-virtual {v14}, Lj6/y;->c()Lb6/h0;

    move-result-object v3

    iget-object v5, v3, Lb6/h0;->p:Lb6/g0;

    if-eqz v5, :cond_13

    iget-boolean v6, v5, Lb6/g0;->l:Z

    invoke-virtual {v14}, Le6/y;->s()Lb6/n;

    move-result-object v7

    invoke-virtual {v7, v1}, Lb6/n;->supportsUpdate(Lb6/h;)Ljava/lang/Boolean;

    move-result-object v13

    if-nez v13, :cond_11

    if-eqz v6, :cond_12

    goto :goto_a

    :cond_11
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_12

    if-nez v6, :cond_14

    invoke-virtual {v2, v7}, Lb6/i;->a0(Lb6/n;)V

    goto :goto_a

    :cond_12
    iget-object v5, v5, Lb6/g0;->m:Ljava/lang/Object;

    check-cast v5, Lj6/h;

    sget-object v6, Lb6/x;->B:Lb6/x;

    invoke-virtual {v1, v6}, Ld6/m;->m(Lb6/x;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lj6/h;->j(Z)V

    instance-of v6, v14, Lf6/c0;

    if-nez v6, :cond_13

    new-instance v6, Lf6/o;

    invoke-direct {v6, v14, v5}, Lf6/o;-><init>(Le6/y;Lj6/h;)V

    move-object v14, v6

    :cond_13
    iget-object v3, v3, Lb6/h0;->q:Lr5/b1;

    invoke-virtual {v14}, Le6/y;->s()Lb6/n;

    move-result-object v5

    invoke-static {v2, v14, v3, v5}, Lg6/f1;->t(Lb6/i;Lb6/f;Lr5/b1;Lb6/n;)Le6/r;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v14, v3}, Le6/y;->F(Le6/r;)Le6/y;

    move-result-object v14

    :cond_14
    :goto_a
    invoke-virtual {v14}, Le6/y;->s()Lb6/n;

    move-result-object v3

    instance-of v5, v3, Le6/f;

    if-eqz v5, :cond_17

    check-cast v3, Le6/f;

    iget-object v3, v3, Le6/f;->q:Le6/c0;

    invoke-virtual {v3}, Le6/c0;->k()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v14, Le6/y;->o:Lb6/l;

    iget-object v3, v3, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v3}, Lu6/h;->p(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-object v6, v12, Lb6/l;->o:Ljava/lang/Class;

    if-ne v5, v6, :cond_17

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v6, v3

    move/from16 v7, v17

    :goto_b
    if-ge v7, v6, :cond_17

    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v15

    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-ne v15, v3, :cond_16

    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v3, v3, v17

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lb6/x;->A:Lb6/x;

    invoke-virtual {v1, v3}, Ld6/m;->m(Lb6/x;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lb6/x;->B:Lb6/x;

    invoke-virtual {v1, v3}, Ld6/m;->m(Lb6/x;)Z

    move-result v3

    invoke-static {v13, v3}, Lu6/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_15
    new-instance v3, Lf6/i;

    invoke-direct {v3, v14, v13}, Lf6/i;-><init>(Le6/y;Ljava/lang/reflect/Constructor;)V

    move-object v14, v3

    goto :goto_c

    :cond_16
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v20

    goto :goto_b

    :cond_17
    :goto_c
    if-eq v14, v11, :cond_18

    invoke-static {v8, v4, v11, v14}, Le6/f;->d0(Lf6/c;[Le6/y;Le6/y;Le6/y;)V

    :cond_18
    invoke-virtual {v14}, Le6/y;->v()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v14}, Le6/y;->t()Ln6/d;

    move-result-object v3

    invoke-virtual {v3}, Ln6/d;->h()Lr5/s0;

    move-result-object v5

    sget-object v6, Lr5/s0;->o:Lr5/s0;

    if-ne v5, v6, :cond_f

    if-nez v9, :cond_19

    new-instance v5, Lg5/m;

    invoke-direct {v5, v12}, Lg5/m;-><init>(Lb6/l;)V

    move-object v9, v5

    :cond_19
    iget-object v5, v9, Lg5/m;->n:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lf6/f;

    invoke-direct {v7, v14, v3}, Lf6/f;-><init>(Le6/y;Ln6/d;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v14, Le6/y;->n:Lb6/i0;

    iget-object v5, v5, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v9, v5, v6}, Lg5/m;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    check-cast v3, Lo6/a;

    iget-object v3, v3, Lo6/a;->p:Ljava/lang/String;

    invoke-virtual {v9, v3, v6}, Lg5/m;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v8, v14}, Lf6/c;->j(Le6/y;)V

    goto/16 :goto_9

    :cond_1a
    invoke-static {v15}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v20 .. v20}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v12, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ": back reference type ("

    const-string v5, ") not compatible with managed type ("

    invoke-static {v13, v0, v4, v1, v5}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v16

    :cond_1b
    invoke-static {v15}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": no back reference property found from type "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v16

    :cond_1c
    move-object/from16 v18, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v1, v0, Le6/f;->y:Le6/w;

    if-eqz v1, :cond_1e

    iget-object v3, v1, Le6/w;->p:Lb6/n;

    if-eqz v3, :cond_1d

    goto :goto_d

    :cond_1d
    iget-object v3, v1, Le6/w;->o:Lb6/l;

    iget-object v5, v1, Le6/w;->l:Lb6/e;

    invoke-virtual {v2, v3, v5}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v3

    invoke-virtual {v1, v3}, Le6/w;->h(Lb6/n;)Le6/w;

    move-result-object v1

    iput-object v1, v0, Le6/f;->y:Le6/w;

    :cond_1e
    :goto_d
    invoke-virtual/range {v18 .. v18}, Le6/c0;->l()Z

    move-result v1

    const-string v3, ": value instantiator ("

    const-string v5, "Invalid delegate-creator definition for "

    if-eqz v1, :cond_20

    invoke-virtual/range {v18 .. v18}, Le6/c0;->D()Lb6/l;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {v18 .. v18}, Le6/c0;->C()Lj6/n;

    move-result-object v6

    invoke-static {v2, v1, v6}, Le6/f;->b0(Lb6/i;Lb6/l;Lj6/n;)Lb6/n;

    move-result-object v1

    iput-object v1, v0, Le6/f;->r:Lb6/n;

    goto :goto_e

    :cond_1f
    invoke-static {v12}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-static {v5, v0, v3, v1, v4}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v16

    :cond_20
    :goto_e
    invoke-virtual/range {v18 .. v18}, Le6/c0;->j()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual/range {v18 .. v18}, Le6/c0;->A()Lb6/l;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual/range {v18 .. v18}, Le6/c0;->z()Lj6/n;

    move-result-object v3

    invoke-static {v2, v1, v3}, Le6/f;->b0(Lb6/i;Lb6/l;Lj6/n;)Lb6/n;

    move-result-object v1

    iput-object v1, v0, Le6/f;->s:Lb6/n;

    goto :goto_f

    :cond_21
    invoke-static {v12}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ") returned true for \'canCreateUsingArrayDelegate()\', but null for \'getArrayDelegateType()\'"

    invoke-static {v5, v0, v3, v1, v4}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v16

    :cond_22
    :goto_f
    if-eqz v4, :cond_25

    array-length v1, v4

    move-object v5, v4

    new-array v4, v1, [Le6/y;

    move/from16 v3, v17

    :goto_10
    if-ge v3, v1, :cond_24

    aget-object v6, v5, v3

    invoke-virtual {v6}, Le6/y;->u()Z

    move-result v7

    if-nez v7, :cond_23

    invoke-virtual {v6}, Le6/y;->y()Z

    move-result v7

    if-nez v7, :cond_23

    iget-object v7, v6, Le6/y;->o:Lb6/l;

    invoke-virtual {v2, v7, v6}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object v7

    invoke-virtual {v6, v7}, Le6/y;->G(Lb6/n;)Le6/y;

    move-result-object v6

    :cond_23
    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_24
    new-instance v1, Lf6/v;

    iget-boolean v5, v8, Lf6/c;->l:Z

    const/4 v6, 0x1

    iget-object v3, v0, Le6/f;->q:Le6/c0;

    invoke-direct/range {v1 .. v6}, Lf6/v;-><init>(Lb6/i;Le6/c0;[Le6/y;ZZ)V

    iput-object v1, v0, Le6/f;->t:Lf6/v;

    :cond_25
    if-eqz v9, :cond_28

    iget-object v1, v9, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Lf6/f;

    move/from16 v4, v17

    :goto_11
    if-ge v4, v2, :cond_27

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf6/f;

    iget-object v6, v5, Lf6/f;->c:Ljava/lang/String;

    invoke-virtual {v8, v6}, Lf6/c;->c(Ljava/lang/String;)Le6/y;

    move-result-object v6

    if-eqz v6, :cond_26

    iput-object v6, v5, Lf6/f;->d:Le6/y;

    :cond_26
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_27
    new-instance v1, Landroidx/lifecycle/a1;

    iget-object v2, v9, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lb6/l;

    iget-object v4, v9, Lg5/m;->o:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    iput-object v1, v0, Le6/f;->G:Landroidx/lifecycle/a1;

    const/4 v3, 0x1

    iput-boolean v3, v0, Le6/f;->u:Z

    goto :goto_12

    :cond_28
    const/4 v3, 0x1

    :goto_12
    iput-object v10, v0, Le6/f;->F:Lg5/e;

    if-eqz v10, :cond_29

    iput-boolean v3, v0, Le6/f;->u:Z

    :cond_29
    iget-boolean v1, v0, Le6/f;->v:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Le6/f;->u:Z

    if-nez v1, :cond_2a

    move v7, v3

    goto :goto_13

    :cond_2a
    move/from16 v7, v17

    :goto_13
    iput-boolean v7, v0, Le6/f;->v:Z

    return-void
.end method

.method public final c0(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Le6/f;->H:Lf6/r;

    iget-object v0, p0, Lf6/r;->o:Lb6/n;

    invoke-virtual {v0}, Lb6/n;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_3

    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v1

    instance-of v2, p3, Ljava/lang/String;

    if-nez v2, :cond_2

    instance-of v2, p3, Ljava/lang/Long;

    if-nez v2, :cond_1

    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast p3, Ljava/lang/Integer;

    sget-object v2, Ls5/n;->B:Ls5/n;

    invoke-virtual {v1, p3, v2}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p3}, Lu6/z;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    check-cast p3, Ljava/lang/Long;

    sget-object v2, Ls5/n;->B:Ls5/n;

    invoke-virtual {v1, p3, v2}, Lu6/z;->A0(Ljava/lang/Object;Ls5/n;)V

    goto :goto_0

    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3}, Lu6/z;->q0(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Lu6/z;->G0(Ls5/c;)Lu6/x;

    move-result-object p1

    invoke-virtual {p1}, Lu6/x;->z0()Ls5/n;

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p3

    :cond_3
    iget-object p0, p0, Lf6/r;->n:Lr5/d1;

    invoke-virtual {p2, p3, p0}, Lb6/i;->X(Ljava/lang/Object;Lr5/d1;)Lf6/b0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le6/f;->H:Lf6/r;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ls5/k;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ls5/k;->d0()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, p2}, Ln6/d;->d(Ls5/k;Lb6/i;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Le6/f;->c0(Ls5/k;Lb6/i;Ljava/lang/Object;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Ls5/n;->s:Z

    if-nez v3, :cond_3

    sget-object p0, Ls5/n;->u:Ls5/n;

    if-ne v1, p0, :cond_2

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    :cond_2
    sget-object p0, Ls5/n;->y:Ls5/n;

    if-ne v1, p0, :cond_4

    iget-object p0, v0, Lf6/r;->n:Lr5/d1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2}, Le6/f;->i0(Ls5/k;Lb6/i;)V

    throw v2

    :cond_4
    :goto_1
    invoke-virtual {p3, p1, p2}, Ln6/d;->d(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract e0()Le6/f;
.end method

.method public final f0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Le6/f;->Z()Lb6/n;

    move-result-object v0

    iget-object v1, p0, Le6/f;->q:Le6/c0;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Le6/c0;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Le6/f;->x:[Lf6/f0;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p0

    sget-object p1, Ls5/n;->D:Ls5/n;

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p2, p0}, Le6/c0;->p(Lb6/i;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final findBackReference(Ljava/lang/String;)Le6/y;
    .locals 0

    iget-object p0, p0, Le6/f;->D:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le6/y;

    return-object p0
.end method

.method public final g0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ls5/k;->Z()I

    move-result v0

    const/4 v1, 0x5

    iget-object v2, p0, Le6/f;->x:[Lf6/f0;

    iget-object v3, p0, Le6/f;->q:Le6/c0;

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Le6/f;->Z()Lb6/n;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Le6/c0;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v2, :cond_1

    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v3, p2, p0}, Le6/c0;->n(Lb6/i;Ljava/math/BigDecimal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Le6/f;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "no suitable creator method found to deserialize from Number value (%s)"

    invoke-virtual {p2, p0, v3, v0, p1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Le6/f;->Z()Lb6/n;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Le6/c0;->d()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_5
    return-object p1

    :cond_6
    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    invoke-virtual {v3, p2, p0, p1}, Le6/c0;->q(Lb6/i;D)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->n:Lu6/a;

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    iget-object p0, p0, Le6/f;->q:Le6/c0;

    invoke-virtual {p0, p1}, Le6/c0;->x(Lb6/i;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p1, p0}, Lu6/h;->B(Lb6/i;Ljava/io/IOException;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getKnownPropertyNames()Ljava/util/Collection;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Le6/f;->w:Lf6/c;

    invoke-virtual {p0}, Lf6/c;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/y;

    iget-object v1, v1, Le6/y;->n:Lb6/i0;

    iget-object v1, v1, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getNullAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->l:Lu6/a;

    return-object p0
.end method

.method public final getObjectIdReader()Lf6/r;
    .locals 0

    iget-object p0, p0, Le6/f;->H:Lf6/r;

    return-object p0
.end method

.method public final h0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le6/f;->H:Lf6/r;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Le6/f;->Z()Lb6/n;

    move-result-object v0

    invoke-virtual {p1}, Ls5/k;->Z()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Le6/f;->x:[Lf6/f0;

    iget-object v5, p0, Le6/f;->q:Le6/c0;

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Le6/c0;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v4, :cond_0

    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p0

    invoke-virtual {v5, p2, p0}, Le6/c0;->r(Lb6/i;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Le6/c0;->e()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v4, :cond_3

    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_3
    return-object p1

    :cond_4
    invoke-virtual {p1}, Ls5/k;->Y()J

    move-result-wide p0

    invoke-virtual {v5, p2, p0, p1}, Le6/c0;->s(Lb6/i;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Le6/c0;->b()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v4, :cond_6

    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_6
    return-object p1

    :cond_7
    invoke-virtual {p1}, Ls5/k;->C()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v5, p2, p0}, Le6/c0;->o(Lb6/i;Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p0, p0, Le6/f;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "no suitable creator method found to deserialize from Number value (%s)"

    invoke-virtual {p2, p0, v5, v0, p1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    :cond_9
    invoke-virtual {p0, p1, p2}, Le6/f;->i0(Ls5/k;Lb6/i;)V

    throw v1
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Le6/f;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    return-object p0
.end method

.method public final i0(Ls5/k;Lb6/i;)V
    .locals 1

    iget-object p0, p0, Le6/f;->H:Lf6/r;

    iget-object v0, p0, Lf6/r;->o:Lb6/n;

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lf6/r;->n:Lr5/d1;

    invoke-virtual {p2, p1, p0}, Lb6/i;->X(Ljava/lang/Object;Lr5/d1;)Lf6/b0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final isCachable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le6/f;->r:Lb6/n;

    if-nez v0, :cond_1

    iget-object v0, p0, Le6/f;->s:Lb6/n;

    if-eqz v0, :cond_1

    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le6/f;->t:Lf6/v;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Le6/f;->s:Lb6/n;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le6/f;->r:Lb6/n;

    :goto_0
    iget-object v1, p0, Le6/f;->q:Le6/c0;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Le6/f;->x:[Lf6/f0;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_2
    return-object p1

    :cond_3
    iget-object v0, p0, Le6/f;->t:Lf6/v;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Le6/f;->a0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Le6/f;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    sget-object p1, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_7

    invoke-static {p0}, Lu6/h;->w(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "non-static inner classes like this can only by instantiated using default, no-argument constructor"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0, p1, v1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_7
    :goto_2
    invoke-static {p0}, Lu6/t;->a(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "cannot deserialize from Object value (no delegate- or property-based Creator): this appears to be a native image, in which case you may need to configure reflection for the class that is to be deserialized"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v0, p1, v1}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_8
    const-string p1, "cannot deserialize from Object value (no delegate- or property-based Creator)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, v1, p1, v2}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public final k0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le6/f;->H:Lf6/r;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Le6/f;->Z()Lb6/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Le6/f;->q:Le6/c0;

    invoke-virtual {v1}, Le6/c0;->i()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Le6/c0;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Le6/f;->x:[Lf6/f0;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1}, Le6/f;->q0(Lb6/i;Ljava/lang/Object;)V

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lg6/f1;->s(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, p2}, Le6/f;->i0(Ls5/k;Lb6/i;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lb6/j;->w:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Le6/f;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object p0

    sget p2, Lh6/a;->r:I

    instance-of p2, p3, Ljava/lang/Class;

    if-eqz p2, :cond_0

    move-object p2, p3

    check-cast p2, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\" (class "

    const-string v1, ") encountered; mapper configured not to allow this"

    const-string v2, "Ignored field \""

    invoke-static {v2, p4, v0, p2, v1}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lh6/a;

    invoke-virtual {p1}, Ls5/k;->n()Ls5/h;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p0}, Lh6/a;-><init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/util/Collection;)V

    invoke-virtual {v0, p3, p4}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    return-void
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->o:Lt6/f;

    return-object p0
.end method

.method public final m0(Ls5/k;Lb6/i;Ls5/c;Ljava/lang/Object;Lu6/z;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lt6/b;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Le6/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/n;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v1

    invoke-virtual {p2, v1}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Le6/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Le6/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Le6/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_3
    iget-object v2, p0, Le6/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    if-eqz v1, :cond_7

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Lu6/z;->R()V

    invoke-virtual {p5, p3}, Lu6/z;->G0(Ls5/c;)Lu6/x;

    move-result-object p0

    invoke-virtual {p0}, Lu6/x;->z0()Ls5/n;

    invoke-virtual {v1, p0, p2, p4}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v1, p1, p2, p4}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p4

    :cond_7
    if-eqz p5, :cond_8

    invoke-virtual {p0, p2, p4, p5}, Le6/f;->n0(Lb6/i;Ljava/lang/Object;Lu6/z;)V

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p0, p1, p2, p4}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p4
.end method

.method public final n0(Lb6/i;Ljava/lang/Object;Lu6/z;)V
    .locals 2

    invoke-virtual {p3}, Lu6/z;->R()V

    iget-object v0, p3, Lu6/z;->m:Ls5/o;

    invoke-virtual {p3, v0}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object p3

    :goto_0
    invoke-virtual {p3}, Lu6/x;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->v:Ls5/n;

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Lu6/x;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lu6/x;->z0()Ls5/n;

    invoke-virtual {p0, p3, p1, p2, v0}, Le6/f;->o0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Le6/f;->B:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    return-void

    :cond_0
    iget-object v0, p0, Le6/f;->z:Ljava/util/Set;

    iget-object v1, p0, Le6/f;->A:Ljava/util/Set;

    invoke-static {p4, v0, v1}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-nez p3, :cond_2

    iget-object p3, p0, Le6/f;->o:Lb6/l;

    iget-object p3, p3, Lb6/l;->o:Ljava/lang/Class;

    :cond_2
    iget-object v0, p2, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb6/j;->r:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ls5/k;->C0()Ls5/k;

    return-void

    :cond_3
    invoke-virtual {p0}, Le6/f;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object p0

    iget-object p1, p2, Lb6/i;->t:Ls5/k;

    sget p2, Lh6/a;->r:I

    instance-of p2, p3, Ljava/lang/Class;

    if-eqz p2, :cond_4

    move-object p2, p3

    check-cast p2, Ljava/lang/Class;

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\" (class "

    const-string v1, "), not marked as ignorable"

    const-string v2, "Unrecognized field \""

    invoke-static {v2, p4, v0, p2, v1}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lh6/a;

    invoke-virtual {p1}, Ls5/k;->n()Ls5/h;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p0}, Lh6/a;-><init>(Ls5/k;Ljava/lang/String;Ls5/h;Ljava/util/Collection;)V

    invoke-virtual {v0, p3, p4}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public final p0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Le6/f;->z:Ljava/util/Set;

    iget-object v1, p0, Le6/f;->A:Ljava/util/Set;

    invoke-static {p4, v0, v1}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Le6/f;->l0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Le6/f;->y:Le6/w;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Le6/w;->d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p3, p4, p2}, Le6/f;->v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Le6/f;->o0(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final q0(Lb6/i;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Le6/f;->x:[Lf6/f0;

    array-length p2, p0

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    aget-object p0, p0, p2

    iget-object p2, p0, Lb6/e;->o:Ljava/lang/Object;

    iget-object p0, p0, Lf6/f0;->p:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lb6/i;->U(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract r0(Lf6/c;)Le6/f;
.end method

.method public abstract s0(Ljava/util/Set;Ljava/util/Set;)Le6/f;
.end method

.method public supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract t0()Le6/f;
.end method

.method public abstract u0(Lf6/r;)Le6/f;
.end method

.method public abstract unwrappingDeserializer(Lu6/r;)Lb6/n;
.end method

.method public final v0(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lb6/i;)Ljava/lang/Object;
    .locals 0

    :goto_0
    instance-of p0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lu6/h;->C(Ljava/lang/Throwable;)V

    if-eqz p4, :cond_2

    sget-object p0, Lb6/j;->D:Lb6/j;

    invoke-virtual {p4, p0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    instance-of p4, p1, Ljava/io/IOException;

    if-eqz p4, :cond_4

    if-eqz p0, :cond_3

    instance-of p0, p1, Ls5/l;

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_4
    if-nez p0, :cond_5

    invoke-static {p1}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    sget p0, Lb6/p;->o:I

    new-instance p0, Lb6/o;

    invoke-direct {p0, p2, p3}, Lb6/o;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lb6/p;->i(Ljava/lang/Throwable;Lb6/o;)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final w0(Lb6/i;Ljava/lang/Exception;)V
    .locals 1

    :goto_0
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lu6/h;->C(Ljava/lang/Throwable;)V

    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    sget-object v0, Lb6/j;->D:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_1
    iget-object p0, p0, Le6/f;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_3
    check-cast p2, Ljava/io/IOException;

    throw p2
.end method
