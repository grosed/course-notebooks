
#include "Rcpp.h"
using namespace Rcpp;

// [[Rcpp::plugins("cpp17")]]

#include <string>
#include <iostream>
#include <complex>
#include <list>
#include <map>
#include <set>
#include <any>



std::string marshall_string(const std::string& X)
{
std::any a(10);
    Rcout << X << std::endl;
    std::string Y {" blady blah ..."};
    return X + Y;
}

template <typename T>
T marshall_T_T(const T& X)
{
    return X;
}

template <typename T>
void marshall_T_void(const T& X)
{
}


template <typename T>
T marshall_double_T(const double& X)
{
  T Y;
  return Y;
}


RCPP_MODULE(marshalling) 
{
function("rcpp_marshall_string", &marshall_string);


function("rcpp_marshall_list_list_double", &marshall_T_T<std::list<std::list<double> > >);
function("rcpp_marshall_list_vector_double", &marshall_T_T<std::list<std::vector<double> > >);
function("rcpp_marshall_vector_list_double", &marshall_T_T<std::vector<std::list<double> > >);
function("rcpp_marshall_vector_vector_double", &marshall_T_T<std::vector<std::vector<double> > >);

function("rcpp_marshall_vector_double", &marshall_T_T<std::vector<double> > );
function("rcpp_marshall_list_double", &marshall_T_T<std::list<double> > );


function("rcpp_marshall_vector_double_void", &marshall_T_void<std::vector<double> > );

function("rcpp_marshall_double_map_string_double", &marshall_double_T<std::map<std::string,double> > );
function("rcpp_marshall_double_set_double", &marshall_double_T<std::set<double> > );
function("rcpp_marshall_double_unordered_set_double", &marshall_double_T<std::unordered_set<double> > );

}
