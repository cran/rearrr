% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pipeline_fixed_groups.R
\name{FixedGroupsTransformation}
\alias{FixedGroupsTransformation}
\title{FixedGroupsTransformation}
\description{
\Sexpr[results=rd, stage=render]{lifecycle::badge("experimental")}

Container for the type of transformation used in
\code{\link[rearrr:FixedGroupsPipeline]{FixedGroupsPipeline}}.

\strong{Note}: For internal use.
}
\seealso{
Other transformation classes: 
\code{\link{GeneratedTransformation}},
\code{\link{Transformation}}
}
\author{
Ludvig Renbo Olsen, \email{r-pkgs@ludvigolsen.dk}
}
\concept{transformation classes}
\section{Super class}{
\code{\link[rearrr:Transformation]{rearrr::Transformation}} -> \code{FixedGroupsTransformation}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{name}}{Name of transformation.}

\item{\code{fn}}{Transformation function.}

\item{\code{args}}{\code{list} of constant arguments for \code{`fn`}.}

\item{\code{var_args}}{\code{list} of arguments for \code{`fn`} with different values per group.}

\item{\code{num_groups}}{Number of groups that the transformation expects.}

\item{\code{apply_arg}}{\code{list} of \code{TRUE}/\code{FALSE} flags indicating
whether the transformation should be applied to each of the groups.

When \code{`NULL`}, the transformation is applied to all groups.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-FixedGroupsTransformation-new}{\code{FixedGroupsTransformation$new()}}
\item \href{#method-FixedGroupsTransformation-get_group_args}{\code{FixedGroupsTransformation$get_group_args()}}
\item \href{#method-FixedGroupsTransformation-apply}{\code{FixedGroupsTransformation$apply()}}
\item \href{#method-FixedGroupsTransformation-print}{\code{FixedGroupsTransformation$print()}}
\item \href{#method-FixedGroupsTransformation-clone}{\code{FixedGroupsTransformation$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FixedGroupsTransformation-new"></a>}}
\if{latex}{\out{\hypertarget{method-FixedGroupsTransformation-new}{}}}
\subsection{Method \code{new()}}{
Initialize transformation.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FixedGroupsTransformation$new(fn, args, var_args, name = NULL)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{fn}}{Transformation function.}

\item{\code{args}}{\code{list} of constant arguments for \code{`fn`}.}

\item{\code{var_args}}{\code{list} of arguments for \code{`fn`} with different values per group.
Each argument should have a list of values (one per group).

By adding \code{".apply"} with a list of \code{TRUE}/\code{FALSE} flags, the transformation
can be disabled for a specific group.

E.g. \code{list(".apply" = list(TRUE, FALSE, TRUE), ...}.}

\item{\code{name}}{Name of transformation.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FixedGroupsTransformation-get_group_args"></a>}}
\if{latex}{\out{\hypertarget{method-FixedGroupsTransformation-get_group_args}{}}}
\subsection{Method \code{get_group_args()}}{
Get arguments for specific group ID.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FixedGroupsTransformation$get_group_args(group_id)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{group_id}}{ID of the group to get arguments for.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
\code{list} of arguments.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FixedGroupsTransformation-apply"></a>}}
\if{latex}{\out{\hypertarget{method-FixedGroupsTransformation-apply}{}}}
\subsection{Method \code{apply()}}{
Apply the transformation to a \code{data.frame}.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FixedGroupsTransformation$apply(data)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{data}}{\code{data.frame} with the expected number of groups.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
Transformed version of \code{`data`}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FixedGroupsTransformation-print"></a>}}
\if{latex}{\out{\hypertarget{method-FixedGroupsTransformation-print}{}}}
\subsection{Method \code{print()}}{
Print an overview of the transformation.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FixedGroupsTransformation$print(..., indent = 0, show_class = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{further arguments passed to or from other methods.}

\item{\code{indent}}{How many spaces to indent when printing.}

\item{\code{show_class}}{Whether to print the transformation class name.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The pipeline. To allow chaining of methods.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-FixedGroupsTransformation-clone"></a>}}
\if{latex}{\out{\hypertarget{method-FixedGroupsTransformation-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{FixedGroupsTransformation$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
